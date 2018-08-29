package com.jdl.css.border.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.border.model.dao.BorderDao;
import com.jdl.css.border.model.vo.BoardCommentVo;
import com.jdl.css.border.model.vo.BorderVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Service
public class BorderService {

	@Autowired
	BorderDao dao;

	public List<BorderVo> getNoticeList(String bCateGory) {
		return dao.borderListSelect(bCateGory);
	}

	public int writeBoard(BorderVo board){
		return dao.writeBoard(board);
	}

	public BorderVo selectBoard(int boardKey) {
		return dao.selectBoard(boardKey);
	}

	public int updateBoard(BorderVo border) {
		return dao.updateBoard(border);
	}

	public List<BorderVo> getNoticeList(BorderVo board) {
		return dao.selectBoardList(board);
	}

	public int countBoardList(String getbCateGory) {
		return dao.selectBoardTotalCount(getbCateGory);
	}

	public int updateBoardCount(int boardKey) {
		return dao.updateBoardCount(boardKey);
	}

	public List<BoardCommentVo> selectCommentList(int attaLocation) {
		return dao.selectCommentList(attaLocation);
	}
	public int InsertborderComment(BoardCommentVo bc) {
		return dao.insertComment(bc);
	}
	public int deleteBoard(BorderVo board) {
		return dao.deleteBoard(board);
	}
	public List<BorderVo> selectBoardList() {
		return dao.selectBoardList();
	}

	public int updateComment(BoardCommentVo bc) {
		return dao.updateComment(bc);
	}

	public int deleteComment(BoardCommentVo bc) {
		return dao.deleteComment(bc);
	}

	public List<BorderVo> selectBoardOne(BorderVo board) {
		return dao.selectBoardOne(board);
	}

	public List<BorderVo> selectBoardTwo(BorderVo board) {
		return dao.selectBoardTwo(board);
	}

	public List<BorderVo> selectBoardThr(BorderVo board) {
		return dao.selectBoardThr(board);
	}
	
	public List<BorderVo> selectBoardOneEmp(BorderVo board) {
		return dao.selectBoardOneEmp(board);
	}

	public List<BorderVo> selectBoardTwoEmp(BorderVo board) {
		return dao.selectBoardTwoEmp(board);
	}

	public List<BorderVo> selectBoardThrEmp(BorderVo board) {
		return dao.selectBoardThrEmp(board);
	}

	public int insertBoard(BorderVo board) {
		return dao.insertboard(board);
	}

	public List<BorderVo> selectBoardFor(BorderVo board) {
		return dao.selectBoardFor(board);
	}

	public List<BorderVo> listsearch(String condition, String keyword, String getbCateGory) {
		return dao.selectsearch(condition, keyword, getbCateGory);
	}

	public int countBoardsearch(String condition, String keyword, String getbCateGory) {
		return dao.selectsearchcount(condition, keyword, getbCateGory);
	}

	public List<EmployeeVo> empsearch(String eName, String getbCateGory) {
		return dao.selectsearchEmp(eName, getbCateGory);
	}

	public int countEmpsearch(String eName, String getbCateGory) {
		return dao.selectEmpsearchccount(eName, getbCateGory);
	}


}
