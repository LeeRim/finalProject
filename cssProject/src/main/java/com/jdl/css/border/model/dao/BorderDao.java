package com.jdl.css.border.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.border.model.vo.BoardCommentVo;
import com.jdl.css.border.model.vo.BorderVo;

@Repository
public class BorderDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<BorderVo> borderListSelect(String bCateGory) {
		return sqlSession.selectList("BorderMapper.BorderListSelect", bCateGory);
	}

	public int writeBoard(BorderVo board) {
		return sqlSession.insert("BorderMapper.WriteBoard", board);
	}

	public BorderVo selectBoard(int boardKey) {
		return sqlSession.selectOne("BorderMapper.BorderSelect", boardKey);
	}

	public int updateBoard(BorderVo border) {
		return sqlSession.update("BorderMapper.BorderUpdate", border);
	}

	public List<BorderVo> selectBoardList(BorderVo board) {
		System.out.println("dao board : " + board);
		return sqlSession.selectList("BorderMapper.BorderSelectList", board);
	}

	public int selectBoardTotalCount(String getbCateGory) {
		return sqlSession.selectOne("BorderMapper.selectBoardTotalCount", getbCateGory);
	}

	
}
