package com.jdl.css.givevacation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.givevacation.model.service.GivevacationService;
import com.jdl.css.givevacation.model.vo.GivevacationVo;

@Controller
public class GivevacationController {

	@Autowired
	GivevacationService service;
	
	@RequestMapping("givevacation.do")
	public String givevacation(){
		return "GIVEVACATION/givevacation";
	}
	
	@RequestMapping("writeGiveVaction.do")
	public ModelAndView writeGiveVaction(GivevacationVo gv, ModelAndView mv) {
		
		int result = service.insertGive(gv);
		
		mv.setViewName("mainPage");
		return mv;
	}
}
