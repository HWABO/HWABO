package com.beet.HWABO.dopost.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.dopost.model.service.DopostService;
import com.beet.HWABO.dopost.model.vo.Dopost;
import com.beet.HWABO.member.model.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DopostController {

	private static final Logger logger = LoggerFactory.getLogger(DopostController.class);

	@Autowired
	private DopostService dopostService;

	
	// dopostlist.do = 게시글목록조회해서 출력페이지 리턴하는 메소드
	@RequestMapping(value = "dopostlist.do", method = RequestMethod.GET)
	public String dopostlist(Model model) {
		
		 ArrayList<Dopost> list = dopostService.selectList();

		if (list.size() > 0) {
			model.addAttribute("list", list);
			return "dopost/dopostListView";      //list를 가지고 오는 jsp파일경로로
		} else {
			model.addAttribute("message", "list불러오기실패");
			return "common/error";
		}	
	}	
	 
	@RequestMapping(value="dopostInsertForm.do", method = RequestMethod.GET)
	public String moveinsertpage() {
		return "dopost/insertdopost";
	}
	


	
	@RequestMapping(value="dopostinsert.do", method = RequestMethod.POST)
	public String dopostinsert(Dopost dopost, Model model) {
	
		if(dopostService.insertDopost(dopost) > 0) {
			return "redirect:dopostlist.do";
		}else {
			model.addAttribute("message", "글 등록실패!!");
			return "common/error";
		}
	}
	
	@RequestMapping(value="dopostDetail.do", method = RequestMethod.GET)
	public String dopostdetail(@RequestParam("dno") String dno, Model model) {
		Dopost dopost = dopostService.selectDopost(dno);
		if (dopost != null) {
			model.addAttribute("dopost", dopost);
			return "dopost/dopostDetailView";      //list를 가지고 오는 jsp파일경로로
		} else {
			model.addAttribute("message", dno + "번 글 상세조회 실패!!");
			return "common/error";
		}	
	}
	
	@RequestMapping(value="dopostUpdateView.do", method = RequestMethod.GET)
	public String dopostUpdateView(@RequestParam("dno") String dno, Model model) {
		Dopost dopost = dopostService.selectDopost(dno);
		if (dopost != null) {
			model.addAttribute("dopost", dopost);
			return "dopost/dopostUpdateView";      //list를 가지고 오는 jsp파일경로로
		} else {
			model.addAttribute("message", dno + "번 글 수정페이지 이동실패!!");
			return "common/error";
		}	
	}
	
	@RequestMapping(value="dopostDelete.do", method = RequestMethod.GET)
	public String dopostdelete(@RequestParam("dno") String dno, Model model) {
	
		if(dopostService.deleteDopost(dno) > 0) {
			return "redirect:dopostlist.do";
		}else {
			model.addAttribute("message", dno + "글 삭제실패!!");
			return "common/error";
		}
	}
	
	@RequestMapping(value="dopostUpdate.do", method = RequestMethod.POST)
	public String dopostUpdate(Dopost dopost, Model model) {
	
		if(dopostService.updateDopost(dopost) > 0) {
			return "redirect:dopostlist.do";
		}else {
			model.addAttribute("message", dopost.getDno() + "글 수정실패!!");
			return "common/error";
		}
	}
}
