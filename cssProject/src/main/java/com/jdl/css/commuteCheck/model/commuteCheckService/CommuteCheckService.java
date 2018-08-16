package com.jdl.css.commuteCheck.model.commuteCheckService;

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
}
