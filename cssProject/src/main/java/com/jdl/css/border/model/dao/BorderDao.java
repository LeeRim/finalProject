package com.jdl.css.border.model.dao;

import java.util.ArrayList;
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
		return sqlSession.selectList("BorderMapper.BorderSelectList", board);
	}

	public int selectBoardTotalCount(String getbCateGory) {
		return sqlSession.selectOne("BorderMapper.selectBoardTotalCount", getbCateGory);
	}

	public int updateBoardCount(int boardKey) {
		return sqlSession.update("BorderMapper.BorderCountUpdate", boardKey);
	}

	public List<BoardCommentVo> selectCommentList(int boardKey) {
		return sqlSession.selectList("BorderMapper.selectCommentList", boardKey);
	}

	public int insertComment(BoardCommentVo bc) {
		return sqlSession.insert("BorderMapper.BorderComment", bc);
	}
	public int deleteBoard(BorderVo board) {
		return sqlSession.delete("BorderMapper.DeleteBoard", board);
	}
	public List<BorderVo> selectBoardList() {
		return sqlSession.selectList("BorderMapper.selectBoardList");
	}

	public int updateComment(BoardCommentVo bc) {
		return sqlSession.update("BorderMapper.updateComment", bc);
	}

	public int deleteComment(BoardCommentVo bc) {
		return sqlSession.delete("BorderMapper.deleteComment", bc);
	}

	public List<BorderVo> selectBoardOne() {
		return sqlSession.selectList("BorderMapper.selectBoardOne");
	}

	public List<BorderVo> selectBoardTwo() {
		return sqlSession.selectList("BorderMapper.selectBoardTwo");
	}

	public List<BorderVo> selectBoardThr() {
		return sqlSession.selectList("BorderMapper.selectBoardThr");
	}

	public int insertboard(BorderVo board) {
		return sqlSession.insert("BorderMapper.insertBoard", board);
	}

	public List<BorderVo> selectBoardFor() {
		return sqlSession.selectList("BorderMapper.selectBoardFor");
	}

	
	
}
