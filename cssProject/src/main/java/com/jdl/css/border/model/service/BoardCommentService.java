package com.jdl.css.border.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.border.model.dao.BoardCommentDao;
import com.jdl.css.border.model.dao.BorderDao;
import com.jdl.css.border.model.vo.BoardCommentVo;

@Service
public class BoardCommentService {

	@Autowired
	BoardCommentDao dao;


	public int insertComment(BoardCommentVo bc) {
		return dao.insertComment(bc);
	}
}
