package com.jdl.css.commuteCheck.model.commuteCheckService;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.commuteCheck.model.commuteCheckDao.CommuteCheckDao;
import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Service
public class CommuteCheckService {

	@Autowired
	CommuteCheckDao dao;
	
	public List<CommuteCheckVo> showCommuteCheck(EmployeeVo user){
		return dao.showCommuteCheck(user);
	}
	
	public int insertInCommuteCheck(CommuteCheckVo commute){
		return dao.insertInCommuteCheck(commute);
	}
	
	public int insertOutCommuteCheck(EmployeeVo user){
		return dao.insertOutCommuteCheck(user);
	}

	public int innserCommute(EmployeeVo user) {
		return dao.insertInnsr(user);
	}

	public CommuteCheckVo selectCommute(CommuteCheckVo commute) {
		return dao.selectInnsr(commute);
	}

	public List<CommuteCheckVo> showCommuteAllCheck(EmployeeVo user) {
		return dao.showCommuteAllCheck(user);
	}
	
	
	
	
}
