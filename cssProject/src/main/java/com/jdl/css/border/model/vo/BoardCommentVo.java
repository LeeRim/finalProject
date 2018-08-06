package com.jdl.css.border.model.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class BoardCommentVo {
	private int commentKey; //댓글 기본키
	private int boardKeyFk; //외래키
	private String cWriter; //작성자
	private String cContent; //내용
	private Date cDate; //작성일
	
	public BoardCommentVo(){
		
	}

	public BoardCommentVo(int commentKey, int boardKeyFk, String cWriter, String cContent, Date cDate) {
		this.commentKey = commentKey;
		this.boardKeyFk = boardKeyFk;
		this.cWriter = cWriter;
		this.cContent = cContent;
		this.cDate = cDate;
	}

	public int getCommentKey() {
		return commentKey;
	}

	public void setCommentKey(int commentKey) {
		this.commentKey = commentKey;
	}

	public int getBoardKeyFk() {
		return boardKeyFk;
	}

	public void setBoardKeyFk(int boardKeyFk) {
		this.boardKeyFk = boardKeyFk;
	}

	public String getcWriter() {
		return cWriter;
	}

	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}

	public String getcContent() {
		return cContent;
	}

	public void setcContent(String cContent) {
		this.cContent = cContent;
	}

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	@Override
	public String toString() {
		return "BoardCommentVo [commentKey=" + commentKey + ", boardKeyFk=" + boardKeyFk + ", cWriter=" + cWriter
				+ ", cContent=" + cContent + ", cDate=" + cDate + "]";
	}

	
}
