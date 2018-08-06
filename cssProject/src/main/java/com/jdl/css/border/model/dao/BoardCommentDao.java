package com.jdl.css.border.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardCommentDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
}
