package com.beet.HWABO.red.model.service;

import java.util.ArrayList;

import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.cpost.model.vo.Cpost;
import com.beet.HWABO.red.model.vo.ChatSpeed;
import com.beet.HWABO.red.model.vo.Chatting;
import com.beet.HWABO.red.model.vo.MemberProject;
import com.beet.HWABO.red.model.vo.PostPlus;
import com.beet.HWABO.red.model.vo.Progress;
import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;


public interface RedService {
	int insertProjectStar(Star star);
	int insertProject(UserProject project);
	int updateProject(UserProject project);
	int deleteProject(String project_num);
	ArrayList<UserProject> selectList(String ucode);
	ArrayList<UserProject> selectStar(String ucode);
	ArrayList<UserProject> selectCheckStar(Star star);
	Project selectProject(String project_num) ;
	int delStar(UserProject up);
	int insertProject2(UserProject project);
	ArrayList<MemberProject> selectMemberList(String pnum);
	ArrayList<Bpost> selectBpost(String pnum);
	int deleteProgress(String pnum);
	int insertProgress(Progress p);
	int updateProjectProgress(MemberProject mp);
	ArrayList<Progress> selectProgressList(String pnum);
	ArrayList<Chatting> selectChat(String pnum);
	int insertChat(Chatting chat);
	int delChat(Chatting chat);
	int delChatAll(Chatting c);
	ArrayList<PostPlus> selectAllPost(String pnum);
	ArrayList<Cpost> selectCpost(String pnum);
	ChatSpeed selectChatSpeed(ChatSpeed c);
	int updateChatSpeed(ChatSpeed c);
}
