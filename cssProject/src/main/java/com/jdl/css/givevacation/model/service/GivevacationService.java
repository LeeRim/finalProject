package com.jdl.css.givevacation.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.givevacation.model.dao.GivevacationDao;
import com.jdl.css.givevacation.model.vo.GivevacationVo;


@Service
public class GivevacationService {

	@Autowired
	GivevacationDao dao;

	public int insertGive(GivevacationVo gv) {
		return dao.insertGive(gv);
	}
	
	
}
