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
	public int insertdopost(Dopost dopost) {
		logger.info("DopostServiceImpl.run ........................");
		return dopostDao.insertdopost(dopost);
	}

	@Override
	public int deletedopost(Dopost dopost) {
		
		return dopostDao.deletedopost(dopost);
	}

	@Override
	public int updatedopost(Dopost dopost) {
		
		return dopostDao.updateOrigindopost(dopost);
	}

	
	@Override
	public ArrayList<Dopost> selectList() {
		return null;
		
	}

	@Override
	public Dopost selectonedopost(String dno) {
		return dopostDao.selectdopost(dno);
	}

	

	@Override
	public Member selectMember(String uemail) {
		return dopostDao.selectMember(uemail);
	}
	
	
}
