package com.jdl.css.commuteCheck.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.commuteCheck.model.commuteCheckService.CommuteCheckService;
import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;


@Controller
public class CommuteCheckController {
	
@Autowired
CommuteCheckService service;
	
	@RequestMapping("commuteCheck.do")
	public ModelAndView showCommuteCheck(ModelAndView mav){
		List<CommuteCheckVo> list = service.showCommuteCheck();
		mav.addObject("list", list);
		mav.setViewName("commuteCheck");
		return mav;
	}
}
