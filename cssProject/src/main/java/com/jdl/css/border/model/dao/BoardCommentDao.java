package com.jdl.css.border.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.border.model.vo.BoardCommentVo;

@Repository
public class BoardCommentDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertComment(BoardCommentVo bc) {
		return sqlSession.insert("BorderMapper.bcInsert", bc);
	}
}
