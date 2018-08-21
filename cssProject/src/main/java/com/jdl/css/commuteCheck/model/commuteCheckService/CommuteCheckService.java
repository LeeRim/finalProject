package com.jdl.css.commuteCheck.model.commuteCheckService;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.commuteCheck.model.commuteCheckDao.CommuteCheckDao;
import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;

@Service
public class CommuteCheckService {

	@Autowired
	CommuteCheckDao dao;
	
	public List<CommuteCheckVo> showCommuteCheck(){
		return dao.showCommuteCheck();
	}
	
	public int insertInCommuteCheck(CommuteCheckVo commute){
		return dao.insertInCommuteCheck(commute);
	}
	
	public int insertOutCommuteCheck(CommuteCheckVo commute){
		return dao.insertOutCommuteCheck(commute);
	}

	public int innserCommute(Date inTime) {
		return dao.insertInnsr(inTime);
	}

	public CommuteCheckVo selectCommute(CommuteCheckVo commute) {
		return dao.selectInnsr(commute);
	}
	
	
	
	
}
