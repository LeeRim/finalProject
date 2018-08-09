package com.jdl.css.border.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.border.model.dao.BorderDao;
import com.jdl.css.border.model.vo.BoardCommentVo;
import com.jdl.css.border.model.vo.BorderVo;

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

	public List<BoardCommentVo> selectCommentList(int boardKey) {
		return dao.selectCommentList(boardKey);
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
}
