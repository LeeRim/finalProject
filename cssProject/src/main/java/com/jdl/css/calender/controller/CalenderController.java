package com.jdl.css.calender.controller;

import java.util.Calendar;
import java.util.HashMap;
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
	public ModelAndView calenderDetailAjax(HttpServletRequest request,ModelMap modelMap, @ModelAttribute CalenderVo vo)throws Exception{
		HashMap resultMap = new HashMap();
		ModelAndView mav = new ModelAndView();
		CalenderVo result = new CalenderVo();
		Calendar c = Calendar.getInstance(TimeZone.getTimeZone("Asia/Seoul"));
		String saveFilePath = "resources/bower_components/json/"+c.get(c.YEAR)+"/"+(c.get(c.MONTH)+1);
		try{
			resultMap.put("id", result.getId());
			resultMap.put("title", result.getTitle());
			resultMap.put("startDate", result.getStartDate());
			resultMap.put("endDate", result.getEndDate());
			
			mav.addObject("data",resultMap);
			mav.setViewName("jsonView");
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return mav;
	}
}
