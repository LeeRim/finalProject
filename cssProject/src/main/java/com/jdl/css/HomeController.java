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


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	CalenderService service;
	
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) {

		/*EmployeeVo user = new EmployeeVo(1,"사번",1,'2',"admin","admin","관리자",3,1,"","","",0,"","",new Date(938291839221L),new Date(938291839221L),new Date(938291839221L),'N',"");
		session.setAttribute("user", user);*/
		
		return "home";
	}
	
}
