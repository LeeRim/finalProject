package com.jdl.css.calender.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.calender.model.dao.CalenderDao;
import com.jdl.css.calender.model.vo.CalenderVo;

@Service
public class CalenderService {

	@Autowired
	CalenderDao dao;
	

	public List<CalenderVo> showCalender() {
		return dao.showCalender();
	}
	
	public int createEvent(CalenderVo calender) {
		return dao.insertCalender(calender);
	}
}
