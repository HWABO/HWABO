package com.beet.HWABO.dopost.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.dopost.model.vo.Dopost;


@Repository("dopostDao")
public class DopostDao {
	private static final Logger logger = LoggerFactory.getLogger(DopostDao.class);
	@Autowired
	private SqlSessionTemplate session;

	public DopostDao() {
		super();

	}

	public int insertDopost(Dopost dopost) {
		return session.insert("dopostMapper.insertDopost", dopost);
	}

	public int deleteDopost(String dno) {
		return session.delete("dopostMapper.deleteDopost", dno);
	}

	public int updateDopost(Dopost dopost) {
		return session.update("dopostMapper.updateDopost", dopost);
	}

	
	public Dopost selectDopost(String dno) {
		logger.info("selectdopost run...");
		return session.selectOne("dopostMapper.selectDopost", dno);
	}

	public ArrayList<Dopost> selectList() {
		List<Dopost> list = session.selectList("dopostMapper.selectList");
		return (ArrayList<Dopost>)list;
	}

	
}
