package com.beet.HWABO.dopost.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.beet.HWABO.dopost.model.vo.Dopost;
import com.beet.HWABO.khc.controller.KhcController;

@Repository("dopostDao")
public class DopostDao {
	private static final Logger logger = LoggerFactory.getLogger(DopostDao.class);
	@Autowired
	private SqlSessionTemplate session;

	public DopostDao() {
		super();

	}

	public int insertdopost(Dopost dopost) {
		logger.info("dopostDao run.....");
		return session.insert("dopostMapper.insertdopost", dopost);
	}

	public int deletedopost(Dopost dopost) {
		return session.delete("dopostMapper.deletedopost", dopost);
	}

	public int updateOrigindopost(Dopost dopost) {
		return session.update("dopostMapper.updateOrigindopost", dopost);
	}

	public int updateAddReadCountdopost(int dno) {
		return session.update("dopostMapper.updateAddReadCountdopost", dno);
	}

	public Dopost selectdopost(int dno) {
		return session.selectOne("dopostMapper.selectdopost");
	}

}
