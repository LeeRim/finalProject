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
	private String qaCheck; //답변여부
	private Date aDate; //답변일
	private String qTitle; //제목
	private List<AttachmentVo> attach;
	
	private String cName;
	
	public QNAVo(){}
	

	public QNAVo(int qKey, int qWriterFk, String qContent, String qAnswer, Date qDate, String qaCheck, Date aDate,
			String qTitle, List<AttachmentVo> attach, String cName) {
		super();
		this.qKey = qKey;
		this.qWriterFk = qWriterFk;
		this.qContent = qContent;
		this.qAnswer = qAnswer;
		this.qDate = qDate;
		this.qaCheck = qaCheck;
		this.aDate = aDate;
		this.qTitle = qTitle;
		this.attach = attach;
		this.cName = cName;
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

	public String getQaCheck() {
		return qaCheck;
	}

	public void setQaCheck(String qaCheck) {
		this.qaCheck = qaCheck;
	}

	public Date getaDate() {
		return aDate;
	}

	public void setaDate(Date aDate) {
		this.aDate = aDate;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	
	public List<AttachmentVo> getAttach() {
		return attach;
	}

	public void setAttach(List<AttachmentVo> attach) {
		this.attach = attach;
	}

	
	
	public String getcName() {
		return cName;
	}


	public void setcName(String cName) {
		this.cName = cName;
	}


	@Override
	public String toString() {
		return "QNAVo [qKey=" + qKey + ", qWriterFk=" + qWriterFk + ", qContent=" + qContent + ", qAnswer=" + qAnswer
				+ ", qDate=" + qDate + ", qaCheck=" + qaCheck + ", aDate=" + aDate + ", qTitle=" + qTitle + ", attach="
				+ attach + ", cName=" + cName + "]";
	}

	
	
	

	
	
}
