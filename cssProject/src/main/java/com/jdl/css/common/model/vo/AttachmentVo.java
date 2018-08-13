package com.jdl.css.common.model.vo;

import java.sql.Date;

public class AttachmentVo {
	
	private int attaKey;
	private int attaLocation;
	private String attaFileName;
	private String attaFilePath;
	private int boardKey; //게시판 기본키
	private Date bDate; //작성일
	private String bTitle; //게시글 제목
	private String bContent; //글내용
	private String eName; //작성자이름
	private int bWriter; //작성자키
	
	public AttachmentVo() {
	}


	public int getBoardKey() {
		return boardKey;
	}


	public void setBoardKey(int boardKey) {
		this.boardKey = boardKey;
	}


	public Date getbDate() {
		return bDate;
	}


	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}


	public String getbTitle() {
		return bTitle;
	}


	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}


	public String getbContent() {
		return bContent;
	}


	public void setbContent(String bContent) {
		this.bContent = bContent;
	}


	public String geteName() {
		return eName;
	}


	public void seteName(String eName) {
		this.eName = eName;
	}


	public int getAttaKey() {
		return attaKey;
	}


	public void setAttaKey(int attaKey) {
		this.attaKey = attaKey;
	}


	public int getAttaLocation() {
		return attaLocation;
	}


	public void setAttaLocation(int attaLocation) {
		this.attaLocation = attaLocation;
	}


	public String getAttaFileName() {
		return attaFileName;
	}


	public void setAttaFileName(String attaFileName) {
		this.attaFileName = attaFileName;
	}


	public String getAttaFilePath() {
		return attaFilePath;
	}


	public void setAttaFilePath(String attaFilePath) {
		this.attaFilePath = attaFilePath;
	}


	public int getbWriter() {
		return bWriter;
	}


	public void setbWriter(int bWriter) {
		this.bWriter = bWriter;
	}


	@Override
	public String toString() {
		return "AttachmentVo [attaKey=" + attaKey + ", attaLocation=" + attaLocation + ", attaFileName=" + attaFileName
				+ ", attaFilePath=" + attaFilePath + ", boardKey=" + boardKey + ", bDate=" + bDate + ", bTitle="
				+ bTitle + ", bContent=" + bContent + ", eName=" + eName + ", bWriter=" + bWriter + "]";
	}

	
}
