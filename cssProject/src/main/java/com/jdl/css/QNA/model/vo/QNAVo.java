package com.jdl.css.QNA.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.jdl.css.common.model.vo.AttachmentVo;

@Component
public class QNAVo {

	private int qKey; //기본키
	private int qWriterFk; // 작성자키
	private String qContent; // 질문내용
	private String qAnswer; //답변내용
	private Date qDate; //작성일
	private String qCheck; //답변여부
	private Date endDate; //답변일
	private String title; //제목
	
	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public QNAVo(int qKey, int qWriterFk, String qContent, String qAnswer, Date qDate, String qCheck, Date endDate,
			String title, List<AttachmentVo> attach) {
		this.qKey = qKey;
		this.qWriterFk = qWriterFk;
		this.qContent = qContent;
		this.qAnswer = qAnswer;
		this.qDate = qDate;
		this.qCheck = qCheck;
		this.endDate = endDate;
		this.title = title;
		this.attach = attach;
	}

	private List<AttachmentVo> attach;
	
	public QNAVo(){
		
	}

	public List<AttachmentVo> getAttach() {
		return attach;
	}

	public void setAttach(List<AttachmentVo> attach) {
		this.attach = attach;
	}


	public int getqKey() {
		return qKey;
	}

	public void setqKey(int qKey) {
		this.qKey = qKey;
	}

	public int getqWriterFk() {
		return qWriterFk;
	}

	public void setqWriterFk(int qWriterFk) {
		this.qWriterFk = qWriterFk;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getqAnswer() {
		return qAnswer;
	}

	public void setqAnswer(String qAnswer) {
		this.qAnswer = qAnswer;
	}

	public Date getqDate() {
		return qDate;
	}

	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}

	public String getqCheck() {
		return qCheck;
	}

	public void setqCheck(String qCheck) {
		this.qCheck = qCheck;
	}

	@Override
	public String toString() {
		return "QNAVo [qKey=" + qKey + ", qWriterFk=" + qWriterFk + ", qContent=" + qContent + ", qAnswer=" + qAnswer
				+ ", qDate=" + qDate + ", qCheck=" + qCheck + "]";
	}
	
	
}
