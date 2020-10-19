package com.beet.HWABO.red.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.cpost.model.vo.Cpost;
import com.beet.HWABO.member.model.vo.PjMember;
import com.beet.HWABO.red.model.vo.Calendar;
import com.beet.HWABO.red.model.vo.ChatSpeed;
import com.beet.HWABO.red.model.vo.Chatting;
import com.beet.HWABO.red.model.vo.MemberProject;
import com.beet.HWABO.red.model.vo.PostPlus;
import com.beet.HWABO.red.model.vo.Progress;
import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.SpostFixed;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;
import com.beet.HWABO.spost.model.vo.Spost;

@Repository("redDao")
public class RedDao {
	@Autowired
	private SqlSessionTemplate session;
	
	public int insertProject(UserProject project) {
		return session.insert("redMapper.insertProject", project);
	}

	public int updateProject(UserProject project) {
		return 0;
	}

	public int deleteProject(String project_num) {
		return session.delete("redMapper.deleteProject", project_num);
	}

	public ArrayList<UserProject> selectList(String ucode) {
		List<UserProject> list = session.selectList("redMapper.selectList", ucode);
		return (ArrayList<UserProject>)list;
	}

	public Project selectProject(String project_num) {
		return session.selectOne("redMapper.selectProject", project_num);
	}

	public int insertProjectStar(Star star) {
		return session.insert("redMapper.insertProjectStar", star);
	}

	public ArrayList<UserProject> selectStar(String ucode) {
		List<UserProject> list = session.selectList("redMapper.selectStar", ucode);
		return (ArrayList<UserProject>)list;
	}
	
	public ArrayList<UserProject> selectCheckStar(Star star) {
		List<UserProject> list = session.selectList("redMapper.selectCheckStar", star);
		return (ArrayList<UserProject>)list;
	}

	public int delStar(UserProject up) {
		return session.delete("redMapper.delStar", up);
	}

	public int insertProject2(UserProject project) {
		return session.insert("redMapper.insertProject2", project);
	}

	public ArrayList<MemberProject> selectMemberList(String pnum) {
		List<MemberProject> list = session.selectList("redMapper.selectMemberList", pnum);
		return (ArrayList<MemberProject>)list;
	}

	public ArrayList<Bpost> selectBpost(String pnum) {
		List<Bpost> list = session.selectList("redMapper.selectBpostList", pnum);
		return (ArrayList<Bpost>)list;
	}

	public int deleteProgress(String pnum) {
		return session.delete("redMapper.deleteProgress", pnum);
	}

	public int insertProgress(Progress p) {
		return session.insert("redMapper.insertProgress", p);
	}

	public int updateProjectProgress(MemberProject mp) {
		return session.update("redMapper.updateProjectProgress",mp);
	}

	public ArrayList<Progress> selectProgressList(String pnum) {
		List<Progress> list = session.selectList("redMapper.selectProgressList", pnum);
		return (ArrayList<Progress>)list;
	}

	public ArrayList<Chatting> selectChat(String pnum) {
		List<Chatting> list = session.selectList("redMapper.selectChat", pnum);
		return (ArrayList<Chatting>)list;
	}

	public int insertChat(Chatting chat) {
		return session.insert("redMapper.insertChat", chat);
	}

	public int delChat(Chatting chat) {
		return session.delete("redMapper.delChat", chat);
	}

	public int delChatAll(Chatting chat) {
		return session.delete("redMapper.delChatAll", chat);
	}

	public ArrayList<PostPlus> selectAllPost(String pnum) {
		List<PostPlus> list = session.selectList("redMapper.selectAllPost", pnum);
		return (ArrayList<PostPlus>)list;
	}

	public ArrayList<Cpost> selectCpost(String pnum) {
		List<Cpost> list = session.selectList("redMapper.selectCpost", pnum);
		return (ArrayList<Cpost>)list;
	}

	public ChatSpeed selectChatSpeed(ChatSpeed c) {
		return session.selectOne("redMapper.selectChatSpeed",c);
	}

	public int updateChatSpeed(ChatSpeed c) {
		return session.update("redMapper.updateChatSpeed",c);
	}

	public int insertCalendar(Calendar calendar) {
		return session.insert("redMapper.insertCalendar", calendar);
	}

	public ArrayList<Calendar> selectCalendar(PjMember pj) {
		List<Calendar> list = session.selectList("redMapper.selectCalendar", pj);
		return (ArrayList<Calendar>)list;
	}

	public int deleteCalendar(Calendar calendar) {
		return session.delete("redMapper.deleteCalendar", calendar);
	}

	public int deleteCalendarAll(PjMember pj) {
		return session.delete("redMapper.deleteCalendarAll", pj);
	}

	public int insertCalendarSpostAll(Spost spost) {
		return session.insert("redMapper.insertCalendarSpostAll", spost);
	}

	public ArrayList<Spost> selectAllSpost(PjMember pj) {
		List<Spost> list = session.selectList("redMapper.selectAllSpost", pj);
		return (ArrayList<Spost>)list;
	}

	public int insertSpost(SpostFixed spost) {
		return session.insert("redMapper.insertSpost", spost);
	}

	public int deleteSpost(Calendar calendar) {
		return session.delete("redMapper.deleteSpost", calendar);
	}

	public int updateSpost(SpostFixed spost) {
		return session.update("redMapper.updateSpost",spost);
	}

	public ArrayList<PostPlus> selectPost(PostPlus pp) {
		List<PostPlus> list = session.selectList("redMapper.selectPost", pp);
		return (ArrayList<PostPlus>)list;
	}
	
}
