package com.jdl.css;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.calender.model.service.CalenderService;
import com.jdl.css.calender.model.vo.CalenderVo;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	CalenderService service;
	
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home() {
		//service.showCalender();
		//id(event), title(event), startdate, enddate 를 화면에서 받아서
		//이걸 디비에 저장을 해주고
		
		//
		
		return "home";
	}
	
}
