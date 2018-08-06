package com.jdl.css.employee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jdl.css.employee.model.service.EmployeeService;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService eService;

	@RequestMapping("loginForm.do")
	public String openLoginForm(){
		return "index/login";
	}
	
	@RequestMapping("login.do")
	public String login(EmployeeVo e,HttpSession session){
		EmployeeVo user = eService.selectEmployeeById(e.geteId());
		System.out.println(user);
		if(user.getePwd().equals(e.getePwd())){
			session.setAttribute("user", user);
		}
		return "redirect:index.do";
	}
}
