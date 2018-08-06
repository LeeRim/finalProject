package com.jdl.css.border.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.border.model.dao.BorderDao;

@Service
public class BoardCommentService {

	@Autowired
	BorderDao dao;
}
