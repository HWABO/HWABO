package com.beet.HWABO.dopost.model.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beet.HWABO.dopost.model.dao.DopostDao;
import com.beet.HWABO.dopost.model.vo.Dopost;
import com.beet.HWABO.member.model.vo.Member;

@Service("dopostService")
public class DopostServiceImpl implements DopostService {
	private static final Logger logger = LoggerFactory.getLogger(DopostServiceImpl.class);
	@Autowired
	private DopostDao dopostDao;

	@Override
	public int insertDopost(Dopost dopost) {		
		return dopostDao.insertDopost(dopost);
	}

	@Override
	public int deleteDopost(String dno) {		
		return dopostDao.deleteDopost(dno);
	}

	@Override
	public int updateDopost(Dopost dopost) {		
		return dopostDao.updateDopost(dopost);
	}

	
	@Override
	public ArrayList<Dopost> selectList() {
		return dopostDao.selectList();
	}

	@Override
	public Dopost selectDopost(String dno) {
		return dopostDao.selectDopost(dno);
	}
	
}
