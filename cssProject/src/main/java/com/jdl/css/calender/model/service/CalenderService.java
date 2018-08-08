package com.jdl.css.calender.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.calender.model.dao.CalenderDao;
import com.jdl.css.calender.model.vo.CalenderVo;

@Service
public class CalenderService {

	@Autowired
	CalenderDao dao;
	
	public CalenderVo showCalender(CalenderVo calender){
		
		return dao.showCalender(calender);
	}
}
