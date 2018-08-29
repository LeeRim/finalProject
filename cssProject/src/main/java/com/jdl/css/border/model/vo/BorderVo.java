package com.jdl.css.border.model.vo;


import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.jdl.css.common.model.vo.AttachmentVo;

@Component
public class BorderVo extends PageInfo{
	
	private int boardKey; //게시판 기본키
	private int companyKey; //회사키
	private String bTitle; //게시글 제목
	private String bContent; //글내용
	private int bWriter; //작성자키
	private int bCount; //조회수
	private Date bDate; //작성일
	private String bCateGory; //게시판 종류
	private String eName; //작성자이름
	private int bType;
	private int startRow;
	private int endRow;
	private String bAttach;
	private List<AttachmentVo> attach;
	private String ePhoto;
	
	public String getePhoto() {
		return ePhoto;
	}

	public void setePhoto(String ePhoto) {
		this.ePhoto = ePhoto;
	}

	public BorderVo(){
		
	}
	
	public String getbAttach() {
		return bAttach;
	}

	public List<AttachmentVo> getAttach() {
		return attach;
	}

	public void setAttach(List<AttachmentVo> attach) {
		this.attach = attach;
	}

	public void setbAttach(String bAttach) {
		this.bAttach = bAttach;
	}


	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getbType() {
		return bType;
	}

	public void setbType(int bType) {
		this.bType = bType;
	}

	public int getBoardKey() {
		return boardKey;
	}

	public void setBoardKey(int boardKey) {
		this.boardKey = boardKey;
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

	public int getbWriter() {
		return bWriter;
	}

	public void setbWriter(int bWriter) {
		this.bWriter = bWriter;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public Date getbDate() {
		return bDate;
	}

	public void setbDate(Date bDate) {
		this.bDate = bDate;
	}

	public String getbCateGory() {
		return bCateGory;
	}

	public void setbCateGory(String bCateGory) {
		this.bCateGory = bCateGory;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	@Override
	public String toString() {
		return "BorderVo [boardKey=" + boardKey + ", companyKey=" + companyKey + ", bTitle=" + bTitle + ", bContent="
				+ bContent + ", bWriter=" + bWriter + ", bCount=" + bCount + ", bDate=" + bDate + ", bCateGory="
				+ bCateGory + ", eName=" + eName + ", bType=" + bType + ", startRow=" + startRow + ", endRow=" + endRow
				+ "]";
	}

	public int getCompanyKey() {
		return companyKey;
	}

	public void setCompanyKey(int companyKey) {
		this.companyKey = companyKey;
	}

	public BorderVo(int boardKey, int companyKey, String bTitle, String bContent, int bWriter, int bCount, Date bDate,
			String bCateGory, String eName, int bType, int startRow, int endRow, String bAttach,
			List<AttachmentVo> attach, String ePhoto) {
		super();
		this.boardKey = boardKey;
		this.companyKey = companyKey;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bWriter = bWriter;
		this.bCount = bCount;
		this.bDate = bDate;
		this.bCateGory = bCateGory;
		this.eName = eName;
		this.bType = bType;
		this.startRow = startRow;
		this.endRow = endRow;
		this.bAttach = bAttach;
		this.attach = attach;
		this.ePhoto = ePhoto;
	}


}
