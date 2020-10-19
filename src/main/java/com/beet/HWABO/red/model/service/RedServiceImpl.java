package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.cpost.model.vo.Cpost;
import com.beet.HWABO.member.model.vo.PjMember;
import com.beet.HWABO.red.model.dao.RedDao;
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


@Service("redService")
public class RedServiceImpl implements RedService {
	@Autowired
	   private RedDao redDao;

	@Override
	public int insertProject(UserProject project) {
		return redDao.insertProject(project);
	}

	@Override
	public int updateProject(UserProject project) {
		return redDao.updateProject(project);
	}

	@Override
	public int deleteProject(String project_num) {
		return redDao.deleteProject(project_num);
	}

	@Override
	public ArrayList<UserProject> selectList(String ucode) {
		return redDao.selectList(ucode);
	}

	@Override
	public Project selectProject(String project_num) {
		return redDao.selectProject(project_num);
	}

	@Override
	public int insertProjectStar(Star star) {
		return redDao.insertProjectStar(star);
	}

	@Override
	public ArrayList<UserProject> selectStar(String ucode) {
		return redDao.selectStar(ucode);
	}

	@Override
	public ArrayList<UserProject> selectCheckStar(Star star) {
		return redDao.selectCheckStar(star);
	}

	@Override
	public int deleteStar(UserProject up) {
		return redDao.delStar(up);
	}

	@Override
	public int insertProject2(UserProject project) {
		return redDao.insertProject2(project);
	}

	@Override
	public ArrayList<MemberProject> selectMemberList(String pnum) {
		return redDao.selectMemberList(pnum);
	}

	@Override
	public ArrayList<Bpost> selectBpost(String pnum) {
		return redDao.selectBpost(pnum);
	}

	@Override
	public int deleteProgress(String pnum) {
		return redDao.deleteProgress(pnum);
	}

	@Override
	public int insertProgress(Progress p) {
		return redDao.insertProgress(p);
	}

	@Override
	public int updateProjectProgress(MemberProject mp) {
		return redDao.updateProjectProgress(mp);
	}

	@Override
	public ArrayList<Progress> selectProgressList(String pnum) {
		return redDao.selectProgressList(pnum);
	}

	@Override
	public ArrayList<Chatting> selectChat(String pnum) {
		return redDao.selectChat(pnum);
	}

	@Override
	public int insertChat(Chatting chat) {
		return redDao.insertChat(chat);
	}

	@Override
	public int deleteChat(Chatting chat) {
		return redDao.delChat(chat);
	}

	@Override
	public int deleteChatAll(Chatting chat) {
		return redDao.delChatAll(chat);
	}

	@Override
	public ArrayList<PostPlus> selectAllPost(String pnum) {
		return redDao.selectAllPost(pnum);
	}

	@Override
	public ArrayList<Cpost> selectCpost(String pnum) {
		return redDao.selectCpost(pnum);
	}

	@Override
	public ChatSpeed selectChatSpeed(ChatSpeed c) {
		return redDao.selectChatSpeed(c);
	}

	@Override
	public int updateChatSpeed(ChatSpeed c) {
		return redDao.updateChatSpeed(c);
	}

	@Override
	public int insertCalendar(Calendar calendar) {
		return redDao.insertCalendar(calendar);
	}

	@Override
	public ArrayList<Calendar> selectCalendar(PjMember pj) {
		return redDao.selectCalendar(pj);
	}

	@Override
	public int deleteCalendar(Calendar calendar) {
		return redDao.deleteCalendar(calendar);
	}

	@Override
	public int deleteCalendarAll(PjMember pj) {
		return redDao.deleteCalendarAll(pj);
	}

	@Override
	public int insertCalendarSpostAll(Spost spost) {
		return redDao.insertCalendarSpostAll(spost);
	}

	@Override
	public ArrayList<Spost> selectAllSpost(PjMember pj) {
		return redDao.selectAllSpost(pj);
	}

	@Override
	public int insertSpost(SpostFixed spost) {
		return redDao.insertSpost(spost);
	}

	@Override
	public int deleteSpost(Calendar calendar) {
		return redDao.deleteSpost(calendar);
	}

	@Override
	public int updateSpost(SpostFixed spost) {
		return redDao.updateSpost(spost);
	}

	@Override
	public ArrayList<PostPlus> selectPost(PostPlus pp) {
		return redDao.selectPost(pp);
	}
	
}
