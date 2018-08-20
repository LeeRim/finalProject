package com.jdl.css;

import java.sql.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jdl.css.calender.model.service.CalenderService;
import com.jdl.css.employee.model.vo.EmployeeVo;


@Controller
public class HomeController {
	
	@Autowired
	CalenderService service;
	
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) {

		return "home";
	}
	
}
