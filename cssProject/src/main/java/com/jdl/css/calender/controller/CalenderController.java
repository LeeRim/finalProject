package com.jdl.css.calender.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.calender.model.service.CalenderService;
import com.jdl.css.calender.model.vo.CalenderVo;


@Controller
public class CalenderController {
	@Autowired
	CalenderService service;
	
	@RequestMapping("calender.do")
	public ModelAndView showCalender(ModelAndView mav){
		
		List<CalenderVo> list = service.showCalender();
		System.out.println(list);
		mav.addObject("list", list);
		
		mav.setViewName("calender");
		return mav;
	}
}
