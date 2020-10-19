package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

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


public interface RedService {
	int insertProjectStar(Star star);
	int insertProject(UserProject project);
	int updateProject(UserProject project);
	int deleteProject(String project_num);
	ArrayList<UserProject> selectList(String ucode);
	ArrayList<UserProject> selectStar(String ucode);
	ArrayList<UserProject> selectCheckStar(Star star);
	Project selectProject(String project_num) ;
	int deleteStar(UserProject up);
	int insertProject2(UserProject project);
	ArrayList<MemberProject> selectMemberList(String pnum);
	ArrayList<Bpost> selectBpost(String pnum);
	int deleteProgress(String pnum);
	int insertProgress(Progress p);
	int updateProjectProgress(MemberProject mp);
	ArrayList<Progress> selectProgressList(String pnum);
	ArrayList<Chatting> selectChat(String pnum);
	int insertChat(Chatting chat);
	int deleteChat(Chatting chat);
	int deleteChatAll(Chatting c);
	ArrayList<PostPlus> selectAllPost(String pnum);
	ArrayList<Cpost> selectCpost(String pnum);
	ChatSpeed selectChatSpeed(ChatSpeed c);
	int updateChatSpeed(ChatSpeed c);
	int insertCalendar(Calendar calendar);
	ArrayList<Calendar> selectCalendar(PjMember pj);
	int deleteCalendar(Calendar calendar);
	int deleteCalendarAll(PjMember pj);
	int insertCalendarSpostAll(Spost spost);
	ArrayList<Spost> selectAllSpost(PjMember pj);
	int insertSpost(SpostFixed spost);
	int deleteSpost(Calendar calendar);
	int updateSpost(SpostFixed spost);
	ArrayList<PostPlus> selectPost(PostPlus pp);
}
