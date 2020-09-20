package com.beet.HWABO.red.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.bpost.model.service.BpostService;
import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.cpost.model.service.CpostService;
import com.beet.HWABO.cpost.model.vo.Cpost;
import com.beet.HWABO.member.model.vo.PjMember;
import com.beet.HWABO.red.model.service.RedService;
import com.beet.HWABO.red.model.vo.Chatting;
import com.beet.HWABO.red.model.vo.MemberProject;
import com.beet.HWABO.red.model.vo.Progress;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;
import com.beet.HWABO.spost.model.service.SpostService;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;

@Controller
public class RedController {
	
	private static final Logger logger = LoggerFactory.getLogger(RedController.class);

	@Autowired
	private RedService redService;
	@Autowired
	private BpostService bpostService;
	@Autowired
	private CpostService cservice;
	@Autowired
	private SpostService spostService;
	
	@RequestMapping(value = "createProject.do", method = RequestMethod.POST)
	public ModelAndView createPro(UserProject project, ModelAndView mv) {
		logger.info("[RedController]createProject.do 실행됨...." + project);
		
		if (redService.insertProject(project) > 0) {
			logger.info("[RedController] 프로젝트 생성 성공 (1/2)");
			if (redService.insertProject2(project) > 0) {
				logger.info("[RedController] 프로젝트 생성 성공 (2/2)");
				mv.setViewName("redirect:/cards.do");
			} else {
				mv.setViewName("redirect:/red404.do");
				mv.addObject("message", "프로젝트 생성 실패...");
				logger.info("[RedController] 프로젝트 생성 실패");
			}
		} else {
			mv.setViewName("redirect:/red404.do");
			mv.addObject("message", "프로젝트 생성 실패...");
			logger.info("[RedController] 프로젝트 생성 실패");
		}
		return mv;
	}
	@RequestMapping(value = "cards.do", method = RequestMethod.GET)
	public ModelAndView plist(ModelAndView mv) {
		logger.info("[RedController]cards2.do 실행됨....");
		mv.setViewName("red/ProjectSessionCheck");
		return mv;
	}
	@RequestMapping(value = "cards2.do", method = RequestMethod.GET)
	public ModelAndView plist(@RequestParam("ucode") String ucode, 
			ModelAndView mv) {
		logger.info("[RedController]cards.do 실행됨....");
		
		ArrayList<UserProject> project = null;
		
		if(ucode != null) {
		 project = redService.selectList(ucode);
		}
		if(project != null) {
			mv.setViewName("red/cards");
			mv.addObject("project",project);
		}else {
			mv.addObject("message", "프로젝트 페이지 조회 실패...");
			mv.setViewName("red/cards");
		}
		
		return mv;

	}
	@RequestMapping(value = "createP.do", method = RequestMethod.GET)
	public ModelAndView pCreate(@RequestParam("ucode") String ucode, ModelAndView mv) {
		logger.info("[RedController]createP.do 실행됨....");
		ArrayList<UserProject> project = null;
		
		if(ucode != null) {
		 project = redService.selectList(ucode);
		}
		if(project != null) {
			mv.setViewName("red/create");
			mv.addObject("project",project);
		}else {
			mv.addObject("message", "프로젝트 페이지 조회 실패...");
			mv.setViewName("red/cards");
		}
		
		return mv;

	}
	@RequestMapping(value = "deleteProject.do", method = RequestMethod.GET)
	public ModelAndView pDelete(@RequestParam("projectNumber") String projectNumber, ModelAndView mv) {
		logger.info("[RedController]deleteProject.do 실행됨....");
		if(redService.deleteProject(projectNumber) > 0) {
			mv.setViewName("redirect:/cards.do");
		}else {
			mv.addObject("message", "프로젝트 삭제 실패...");
			mv.setViewName("redirect:/red404.do");
		}
		
		return mv;
		
	}
	@RequestMapping(value = "delStar.do", method = RequestMethod.GET)
	public ModelAndView starDelete(UserProject up, ModelAndView mv) {
		logger.info("[RedController]delStar.do 실행됨....");
		if(redService.delStar(up) > 0) {
			mv.setViewName("redirect:/cards.do");
		}else {
			mv.addObject("message", "프로젝트 삭제 실패...");
			mv.setViewName("redirect:/cards.do");
		}
		
		return mv;
		
	}
	@RequestMapping(value = "starProject.do", method = RequestMethod.POST)
	public ModelAndView pStar(
			Star star, ModelAndView mv) {
		logger.info("[RedController]deleteProject.do 실행됨....star : " + star);
		if( ((ArrayList<UserProject>)redService.selectCheckStar(star)).size() == 0 &&
				redService.insertProjectStar(star) > 0) {
			mv.setViewName("redirect:/cards.do");
		}else {
			mv.setViewName("redirect:/cards.do");
		}
		
		return mv;
		
	}
	@RequestMapping(value = "starList.do", method = RequestMethod.POST)
	@ResponseBody 
	public String sssListStar(@RequestParam("ucode") String ucode
			,HttpServletResponse response) throws IOException {
		logger.info("즐겨찾기 불러오기 run....");
		
		ArrayList<UserProject> list =  redService.selectStar(ucode);
		
		JSONObject sendJson = new JSONObject();

		JSONArray jarr = new JSONArray();

		for (UserProject project : list) {
			JSONObject job = new JSONObject();
			job.put("ucode", URLEncoder.encode(project.getUcode(), "utf-8"));
			job.put("star", URLEncoder.encode(project.getStar(), "utf-8"));
			job.put("name", URLEncoder.encode(project.getName(), "utf-8"));
			jarr.add(job);
		}

		sendJson.put("list5", jarr);

		return sendJson.toJSONString();
	}
	//로그아웃
	@RequestMapping("logoutRed.do")
	public String logout(HttpServletRequest request, Model model) {
			logger.info("로그아웃하는  회원 정보 : " + request.getAttribute("uname"));
			HttpSession session = request.getSession(false);
			if (session != null) {
				session.invalidate();
				return "welcome";
			} else {
				return "welcome";
			}
	}
	@RequestMapping(value = "ftables.do", method = RequestMethod.GET)
	public ModelAndView tableChk(@RequestParam("project_num") String pnum, ModelAndView mv) {
		mv.addObject("pnum",pnum);
		mv.setViewName("red/listSessionCheck");
		return mv;
	}
	@RequestMapping(value = "ftables2.do", method = RequestMethod.GET)
	public ModelAndView selectLogin(PjMember pj, HttpServletRequest request, ModelAndView mv,SessionStatus status) {
			logger.info("세션에 프로젝트넘버 추가완료... 프로젝트번호 : " + pj.getPnum());
			String pnum = pj.getPnum();
			ArrayList<MemberProject> memberProject = redService.selectMemberList(pnum);
			ArrayList<String> names = new ArrayList<String>();
			ArrayList<String> ucodes = new ArrayList<String>();
			String pnames = "";
			
			for(MemberProject m : memberProject) {
				names.add(m.getUname());
				ucodes.add(m.getUcode());
				pnames = m.getName();
			}
			
			HttpSession session = request.getSession();
			session.setAttribute("pnum", pnum);
			session.setAttribute("pmlist", memberProject);
			session.setAttribute("names", names);
			session.setAttribute("ucodes", ucodes);
			session.setAttribute("pnames", pnames);
			logger.info("세션에 프로젝트넘버 추가완료... 프로젝트번호 : " + pnum);
			logger.info("세션에 회원정보 목록 추가완료... pmlist : " + memberProject);
			logger.info("세션에 회원이름 목록 추가완료... names : " + names);
			logger.info("세션에 회원아이디 목록 추가완료... ucodes : " + ucodes);
			logger.info("세션에 프로젝트명 추가완료... pnames : " + pnames);
			status.setComplete(); // 요청성공, 200 전송
			mv.setViewName("red/tables");
			
			session.setAttribute("totalProgress", 0);//진행률 기본값 (실제값은 아래에있어요)
			ArrayList<Bpost> blist = redService.selectBpost(pnum);
			if(blist.size() > 0) {
			///
			int chk = 0;
			int goal = 0;
			int done = 0;
			ArrayList<Progress> plist = new ArrayList<Progress>(); 
			
			for(Bpost b : blist) {
				Progress p = new Progress();
				 
				p.setTitle(b.getBtitle());
				if(b.getBcontent() != null) {
					p.setContent(b.getBcontent());
				}else {
					p.setContent("");
				}
				p.setName(b.getBwriter());
				p.setUcode(b.getBucode());
				p.setProject_num(pnum);
				p.setGoal(3);
				goal += 3;
				if(b.getBkind().equals("완료")) {
					p.setDone(3);
					done += 3;
				}else if(b.getBkind().equals("피드백")) {
					p.setDone(2);
					done += 2;
				}else if(b.getBkind().equals("진행")) {
					p.setDone(1);
					done += 1;
				}else {
					p.setDone(0);
				}
				plist.add(p);
			}
			if(redService.selectProgressList(pnum).size() > 0) {
				if(redService.deleteProgress(pnum) > 0) {
					logger.info("진행률 초기화완료...");
				}else {
					logger.info("진행률 초기화오류...");
				}
			}else {
				logger.info("진행률 초기화완료... : 초기화할 데이터 없음 (정상)");
			}
			for(Progress p : plist) {
				if(redService.insertProgress(p) < 1) {
					chk++;
					logger.info("PROGRESS 데이터 유실됨... 유실된 데이터 : " + p);
				}
			}
			
			if(chk < 1) {
				MemberProject mp = new MemberProject();
				mp.setProject_num(pnum);
				mp.setGoal(goal);
				mp.setDone(done);
				if(goal == 0 && done == 0) {
					mp.setGoal(100000);
					mp.setDone(1);
				}
				logger.info("PROGRESS 데이터 사용가능...");
				if(redService.updateProjectProgress(mp) > 0) {
					logger.info("전체 진행률 업데이트 성공...");
				}else {
					logger.info("전체 진행률 업데이트 실패...");
				}
			}
			int total = done*100/goal;
			/////////////////
			session.setAttribute("totalProgress", total);
			logger.info("세션에 전체진행률 추가완료... progress : " + total + "%");
			}
			
			int allListFilterCount = 0;
			ArrayList<Post> allListFilter = new ArrayList<Post>();
			ArrayList<Post> allList = redService.selectAllPost(pnum);
			for(Post post : allList) {
				if(!((post.getSopen() !=null && post.getSopen().equals("n")) || 
				(post.getBopen() !=null && post.getBopen().equals("n")) || 
				(post.getCopen() !=null && post.getCopen().equals("N")))) {
					allListFilter.add(post);
				}else {
					allListFilterCount++;
				}
			}
			if (allListFilter != null) {
				logger.info("post list 가져오기 성공... 비공개 된 전체 게시물 : " + allListFilterCount + "개");
				mv.addObject("list", allListFilter);
			}
			int cFilterCount = 0;
			ArrayList<Cpost> clistFilter = new ArrayList<Cpost>();
			ArrayList<Cpost> clist = redService.selectCpost(pnum);
			for(Cpost cpost : clist) {
				if(!cpost.getCopen().equals("N")) {
					clistFilter.add(cpost);
				}else {
					cFilterCount++;
				}
			}
			if (clist != null) {
				logger.info("cpost list 가져오기 성공... 비공개 된 cpost게시물 : " + cFilterCount + "개");
				mv.addObject("clist", clist);
			}
			////kyu////
//			ArrayList<Bpost> list = bpostService.selectList();
//			if (list != null) {
//				logger.info("bpost list" + list);
//				mv.addObject("list", list);
//			}else {
//				logger.info("bpost list 불러오기 실패? 어째서... ㅠ");
//			}
			////kyu end////

			////abc//////////
			
//			String startday = spost.getSstartday().toString();
//			String endday = spost.getSendday().toString();
//
//			SimpleDateFormat recvSimpleFormat = new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
//
//			SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
//			SimpleDateFormat format2 = new SimpleDateFormat("HH:mm", Locale.ENGLISH);
//
//			try {
//				java.util.Date startdate = recvSimpleFormat.parse(startday);
//				java.util.Date enddate = recvSimpleFormat.parse(endday);
//
//				startday = format1.format(startdate) + "T" + format2.format(startdate);
//				endday = format1.format(enddate) + "T" + format2.format(enddate);
//
//			} catch (ParseException e) {
//				e.printStackTrace();
//			}
			//mv.addObject("startday", startday);
			//mv.addObject("endday", endday);
			////abc end///////
			
			return mv;
	}
	@RequestMapping(value = "fother.do", method = RequestMethod.GET)
	public ModelAndView selectProgresses(@RequestParam("project_num") String pnum,  ModelAndView mv) {
			logger.info("진행률 페이지... 프로젝트번호 : " + pnum);
			
			int chk = 0;
			int goal = 0;
			int done = 0;
			ArrayList<Progress> plist = new ArrayList<Progress>(); 
			ArrayList<Bpost> blist = redService.selectBpost(pnum);
			for(Bpost b : blist) {
				Progress p = new Progress();
				 
				p.setTitle(b.getBtitle());
				if(b.getBcontent() != null) {
					p.setContent(b.getBcontent());
				}else {
					p.setContent("");
				}
				if(b.getBwriter() != null) {
					p.setName(b.getBwriter());
				}else {
					p.setName("비뜨 애호가");
				}
				p.setUcode(b.getBucode());
				p.setProject_num(pnum);
				p.setGoal(3);
				goal += 3;
				if(b.getBkind().equals("완료")) {
					p.setDone(3);
					done += 3;
				}else if(b.getBkind().equals("피드백")) {
					p.setDone(2);
					done += 2;
				}else if(b.getBkind().equals("진행")) {
					p.setDone(1);
					done += 1;
				}else {
					p.setDone(0);
				}
				plist.add(p);
			}
			if(redService.selectProgressList(pnum).size() > 0) {
				if(redService.deleteProgress(pnum) > 0) {
					logger.info("진행률 초기화완료...");
				}else {
					logger.info("진행률 초기화오류...");
				}
			}else {
				logger.info("진행률 초기화완료... : 초기화할 데이터 없음 (정상)");
			}
			for(Progress p : plist) {
				if(redService.insertProgress(p) < 1) {
					chk++;
					logger.info("PROGRESS 데이터 유실됨... 유실된 데이터 : " + p);
				}
			}
			
			Set<String> MemberNames = new HashSet<String>();
			for(Progress progress : plist) {
				MemberNames.add(progress.getName());
				logger.info("들어가는 이름 : " + progress.getName());
			}
			
			for(String names : MemberNames) {
				logger.info("나온 이름 : " + names);
				ArrayList<Progress> list = new ArrayList<Progress>();
				for(Progress progress : plist) {
					if(progress.getName().equals(names)) {
						list.add(progress);
					}
				}
				mv.addObject(names, list);
			}
			
		if(chk < 1) {
			MemberProject mp = new MemberProject();
			mp.setProject_num(pnum);
			mp.setGoal(goal);
			mp.setDone(done);
			if(goal == 0 && done == 0) {
				mp.setGoal(100000);
				mp.setDone(1);
			}
			logger.info("PROGRESS 데이터 사용가능...");
			if(redService.updateProjectProgress(mp) > 0) {
				logger.info("전체 진행률 업데이트 성공...");
			}else {
				logger.info("전체 진행률 업데이트 실패...");
			}
			mv.addObject("MemberNames",MemberNames);
			mv.addObject("plist", plist);
			mv.setViewName("red/utilities-other");
		}else {
			mv.setViewName("welcome");
			logger.info("전체 진행률 업데이트 실패... 추측 : DB테이블과 매치 불가");
		}
			
		return mv;
	}	

	@RequestMapping(value = "riseChat.do", method = RequestMethod.POST)
	@ResponseBody 
	public String intervalChat(@RequestParam("project_num") String pnum
			,HttpServletResponse response) throws IOException {
			
		ArrayList<Chatting> list =  redService.selectChat(pnum);
			
		JSONObject sendJson = new JSONObject();

		JSONArray jarr = new JSONArray();

		for (Chatting c : list) {
			JSONObject job = new JSONObject();
			if(c.getUcode() != null) {
				job.put("ucode", URLEncoder.encode(c.getUcode(), "utf-8"));
			}else {
				job.put("ucode", "Guest");
			}
			if(c.getUname() != null) {
				job.put("uname", URLEncoder.encode(c.getUname(), "utf-8"));
			}else {
				job.put("uname", URLEncoder.encode("손님 비뜨^^", "utf-8"));
			}
			if(c.getContent() == null) {
				c.setContent("비뜨");
			}else if(c.getContent().equals("비트야 핵 사랑해")){
				if(redService.delChatAll(c) > 0) {
					c.setContent("모든 데이터 삭제완료...");
				}
			}
			job.put("content", URLEncoder.encode(c.getContent(), "utf-8"));
			job.put("time", c.getChat_time().toString());
			job.put("pnum", URLEncoder.encode(c.getProject_num(), "utf-8"));
			jarr.add(job);
		}

		sendJson.put("chatList", jarr);

		return sendJson.toJSONString();
	}
	@RequestMapping(value="sendChat.do", method=RequestMethod.POST)
	public void throwChatToServer(Chatting chat, HttpServletResponse response) throws IOException {
			response.setContentType("test/html; charset=utf-8"); //여기에 오타나면 파일 선택창이 뜬다
			int r = redService.insertChat(chat);
			PrintWriter out = response.getWriter();
			if(r > 0) {
				out.append("ok");
				out.flush();
			}else {
				out.append("fail");
				out.flush();
			}
			out.close();
	}
	@RequestMapping(value = "delChat.do", method = RequestMethod.POST)
	public void starDelete(Chatting chat, HttpServletResponse response) throws IOException {
		response.setContentType("test/html; charset=utf-8");
		Timestamp t = Timestamp.valueOf(chat.getContent());
		chat.setChat_time(t);
		PrintWriter out = response.getWriter();
		if(redService.delChat(chat) > 0) {
			logger.info("선택한 채팅기록 삭제됨 ....");
			out.append("ok");
			out.flush();
		}else {
			logger.info("채팅 삭제 실패....");
			out.append("fail");
			out.flush();
		}
		out.close();
	}
////views start//////////////////////////////	
	@RequestMapping(value = "suugit.do", method = RequestMethod.GET)
	public String suugitIndex(Model model) {
		
		return "welcome";
	}
	
	@RequestMapping(value = "red.do", method = RequestMethod.GET)
	public String redIndex(Model model) {
		
		return "sample/index";
	}
	@RequestMapping(value = "abc.do", method = RequestMethod.GET)
	public String abcabcIndex(Model model) {
		
		return "abc/index";
	}
	@RequestMapping(value = "kyukyu.do", method = RequestMethod.GET)
	public String kyukyuIndex(Model model) {
		
		return "kyukyu/index";
	}
	@RequestMapping(value = "khc.do", method = RequestMethod.GET)
	public String khcIndex(Model model) {
		
		return "khc/index";
	}
	@RequestMapping(value = "plz.do", method = RequestMethod.GET)
	public String plzIndex(Model model) {
		
		return "yeongmin/index";
	}
	@RequestMapping(value = "sample.do", method = RequestMethod.GET)
	public String sampleIndex(Model model) {
		
		return "sample/index";
	}
	@RequestMapping(value = "404.do", method = RequestMethod.GET)
	public String go404(Model model) {
		
		return "sample/error404";
	}
	@RequestMapping(value = "red404.do", method = RequestMethod.GET)
	public String goRed404(Model model) {
		
		return "red/error404";
	}
	@RequestMapping(value = "blank.do", method = RequestMethod.GET)
	public String blank(Model model) {
		
		return "sample/blank";
	}
	@RequestMapping(value = "buttons.do", method = RequestMethod.GET)
	public String buttons(Model model) {
		
		return "sample/buttons";
	}
	
	@RequestMapping(value = "scards.do", method = RequestMethod.GET)
	public String scards(Model model) {
		
		return "sample/cards";
	}
	@RequestMapping(value = "charts.do", method = RequestMethod.GET)
	public String charts(Model model) {
		
		return "sample/charts";
	}
	@RequestMapping(value = "fpassword.do", method = RequestMethod.GET)
	public String fpassword(Model model) {
		
		return "sample/forgot-password";
	}
	@RequestMapping(value = "flogin.do", method = RequestMethod.GET)
	public String login(Model model) {
		
		return "sample/login";
	}
	@RequestMapping(value = "fregister.do", method = RequestMethod.GET)
	public String register(Model model) {
		
		return "sample/register";
	}
	
	@RequestMapping(value = "sftables.do", method = RequestMethod.GET)
	public String stable(Model model) {
		
		return "sample/tables";
	}
	@RequestMapping(value = "fanimation.do", method = RequestMethod.GET)
	public String animation(Model model) {
		
		return "sample/utilities-animation";
	}
	@RequestMapping(value = "fborder.do", method = RequestMethod.GET)
	public String border(Model model) {
		
		return "red/utilities-border";
	}
	@RequestMapping(value = "fborder2.do", method = RequestMethod.GET)
	public String border2(Model model) {
		
		return "red/utilities-border2";
	}
	@RequestMapping(value = "sfborder.do", method = RequestMethod.GET)
	public String sborder(Model model) {
		
		return "sample/utilities-border";
	}
	@RequestMapping(value = "fcolor.do", method = RequestMethod.GET)
	public String color(Model model) {
		
		return "sample/utilities-color";
	}
	@RequestMapping(value = "sfother.do", method = RequestMethod.GET)
	public String sother(Model model) {
		
		return "sample/utilities-other";
	}
	@RequestMapping(value = "writeB.do", method = RequestMethod.GET)
	public String writeB(Model model) {
		
		return "red/write";
	}
////views end//////////////////////////////
	
}
