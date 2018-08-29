package com.jdl.css.border.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.border.model.vo.BoardCommentVo;
import com.jdl.css.border.model.vo.BorderVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

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

	public List<BoardCommentVo> selectCommentList(int attaLocation) {
		return sqlSession.selectList("BorderMapper.selectCommentList", attaLocation);
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

	public List<BorderVo> selectBoardOne(BorderVo board) {
		return sqlSession.selectList("BorderMapper.selectBoardOne", board);
	}

	public List<BorderVo> selectBoardTwo(BorderVo board) {
		return sqlSession.selectList("BorderMapper.selectBoardTwo", board);
	}

	public List<BorderVo> selectBoardThr(BorderVo board) {
		return sqlSession.selectList("BorderMapper.selectBoardThr", board);
	}
	
	public List<BorderVo> selectBoardOneEmp(BorderVo board) {
		return sqlSession.selectList("BorderMapper.selectBoardOneEmp", board);
	}

	public List<BorderVo> selectBoardTwoEmp(BorderVo board) {
		return sqlSession.selectList("BorderMapper.selectBoardTwoEmp", board);
	}

	public List<BorderVo> selectBoardThrEmp(BorderVo board) {
		return sqlSession.selectList("BorderMapper.selectBoardThrEmp", board);
	}

	public int insertboard(BorderVo board) {
		return sqlSession.insert("BorderMapper.insertBoard", board);
	}

	public List<BorderVo> selectBoardFor(BorderVo board) {
		return sqlSession.selectList("BorderMapper.selectBoardFor", board);
	}

	public List<BorderVo> selectsearch(String condition, String keyword, String getbCateGory) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		map.put("getbCateGory", getbCateGory);
		return sqlSession.selectList("BorderMapper.listsearch", map);
	}

	public int selectsearchcount(String condition, String keyword, String getbCateGory) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("condition", condition);
		map.put("keyword", keyword);
		map.put("getbCateGory", getbCateGory);
		return sqlSession.selectOne("BorderMapper.listsearchcount", map);
	}

	public List<EmployeeVo> selectsearchEmp(String eName, String getbCateGory) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("eName", eName);
		map.put("getbCateGory", getbCateGory);
		return sqlSession.selectList("BorderMapper.searchEmp", map);
	}

	public int selectEmpsearchccount(String eName, String getbCateGory) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("eName", eName);
		map.put("getbCateGory", getbCateGory);
		return sqlSession.selectOne("BorderMapper.Empsearchcount", map);
	}

}
