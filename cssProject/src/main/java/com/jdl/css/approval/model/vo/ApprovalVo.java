package com.jdl.css.approval.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class ApprovalVo {

	private int aKey;
	private int cKeyFk;
	private int divDoctypeFk;
	private String aTitle;
	private int aWriterFk;
	private Date aWriteDate;
	private int aCondition;
	private List<ApprovalConditionVo> aConList;
	
	public ApprovalVo() {
		// TODO Auto-generated constructor stub
	}

	public ApprovalVo(int aKey, int cKeyFk, int divDoctypeFk, String aTitle, int aWriterFk, Date aWriteDate,
			int aCondition) {
		this.aKey = aKey;
		this.cKeyFk = cKeyFk;
		this.divDoctypeFk = divDoctypeFk;
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

	public int getDivDoctypeFk() {
		return divDoctypeFk;
	}

	public void setDivDoctypeFk(int divDoctypeFk) {
		this.divDoctypeFk = divDoctypeFk;
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

	public Date getaWriteDate() {
		return aWriteDate;
	}

	public void setaWriteDate(Date aWriteDate) {
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
		return "ApprovalVo [aKey=" + aKey + ", cKeyFk=" + cKeyFk + ", divDoctypeFk=" + divDoctypeFk + ", aTitle="
				+ aTitle + ", aWriterFk=" + aWriterFk + ", aWriteDate=" + aWriteDate + ", aCondition=" + aCondition
				+ ", aConList=" + aConList + "]";
	}
	
}
