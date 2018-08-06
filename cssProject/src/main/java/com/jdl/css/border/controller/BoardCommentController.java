package com.jdl.css.border.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.jdl.css.border.model.service.BoardCommentService;
import com.jdl.css.border.model.service.BorderService;

@Controller
public class BoardCommentController {

	@Autowired
	BoardCommentService bordercommentservice;
}
