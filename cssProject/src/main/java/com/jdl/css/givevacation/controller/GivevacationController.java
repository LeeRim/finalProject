package com.jdl.css.givevacation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.givevacation.model.service.GivevacationService;

@Controller
public class GivevacationController {

	@Autowired
	GivevacationService service;
	
	@RequestMapping("givevacation.do")
	public String givevacation(){
		return "GIVEVACATION/givevacation";
	}
}
