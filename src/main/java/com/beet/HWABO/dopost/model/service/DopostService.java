package com.beet.HWABO.dopost.model.service;


import java.util.ArrayList;

import com.beet.HWABO.dopost.model.vo.Dopost;
import com.beet.HWABO.member.model.vo.Member;

public interface DopostService {
	
	int insertDopost(Dopost dopost);
	 int deleteDopost(String dno);
	 int updateDopost( Dopost dopost);
	 ArrayList<Dopost> selectList();
	Dopost selectDopost(String dno);

}
