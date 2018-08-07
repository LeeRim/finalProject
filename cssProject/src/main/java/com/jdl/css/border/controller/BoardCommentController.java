package com.jdl.css.border.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.border.model.service.BoardCommentService;
import com.jdl.css.border.model.service.BorderService;
import com.jdl.css.border.model.vo.BoardCommentVo;

@Controller
public class BoardCommentController {

	@Autowired
	BoardCommentService bordercommentservice;
	
	@RequestMapping("writeComment.do")
	public ModelAndView writeComment(BoardCommentVo bc, ModelAndView mv){
		
		System.out.println("bc : " + bc);
		int result = bordercommentservice.insertComment(bc);
		
		return mv;
	}
}
