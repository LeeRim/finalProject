package com.jdl.css.calender.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.calender.model.service.CalenderService;
import com.jdl.css.calender.model.vo.CalenderVo;
import com.jdl.css.employee.model.vo.EmployeeVo;


@Controller
public class CalenderController {
	@Autowired
	CalenderService service;
	
	@RequestMapping("calender.do")
	public ModelAndView showCalender(ModelAndView mav,HttpSession session){
		
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		
		List<CalenderVo> list = service.showCalender(user);
		mav.addObject("list", list);
		mav.setViewName("calender/calender");
		return mav;
	}


	@RequestMapping("insertEvent.do")
	public ModelAndView createEvent(CalenderVo calender,ModelAndView mav,HttpSession session){
		
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		System.out.println(user);
		mav.addObject("user",user);
		System.out.println("insertEvent : "+calender);
		int calenderResult = service.createEvent(calender);
		System.out.println(calenderResult);
		mav.setViewName("redirect:calender.do");
		return mav;
	}
	
}
