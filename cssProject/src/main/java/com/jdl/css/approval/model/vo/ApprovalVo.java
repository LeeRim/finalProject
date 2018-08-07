package com.jdl.css.approval.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ApprovalVo {

	private int aKey;
	private int cKeyFk;
	private String aTitle;
	private int aWriterFk;
	private String aWriteDate;
	private int aCondition;
	private List<ApprovalConditionVo> aConList;
	
	public ApprovalVo() {
		// TODO Auto-generated constructor stub
	}

	public ApprovalVo(int aKey, int cKeyFk, String aTitle, int aWriterFk, String aWriteDate,
			int aCondition) {
		this.aKey = aKey;
		this.cKeyFk = cKeyFk;
		this.aTitle = aTitle;
		this.aWriterFk = aWriterFk;
		this.aWriteDate = aWriteDate;
		this.aCondition = aCondition;
	}

	public int getaKey() {
		return aKey;
	}

	public void setaKey(int aKey) {
		this.aKey = aKey;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}


	public String getaTitle() {
		return aTitle;
	}

	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}

	public int getaWriterFk() {
		return aWriterFk;
	}

	public void setaWriterFk(int aWriterFk) {
		this.aWriterFk = aWriterFk;
	}

	public String getaWriteDate() {
		return aWriteDate;
	}

	public void setaWriteDate(String aWriteDate) {
		this.aWriteDate = aWriteDate;
	}

	public int getaCondition() {
		return aCondition;
	}

	public void setaCondition(int aCondition) {
		this.aCondition = aCondition;
	}

	@Override
	public String toString() {
		return "ApprovalVo [aKey=" + aKey + ", cKeyFk=" + cKeyFk + ", aTitle=" + aTitle + ", aWriterFk=" + aWriterFk
				+ ", aWriteDate=" + aWriteDate + ", aCondition=" + aCondition + ", aConList=" + aConList + "]";
	}

}
