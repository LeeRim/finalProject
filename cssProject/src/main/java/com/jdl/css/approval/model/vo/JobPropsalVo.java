package com.jdl.css.approval.model.vo;

import org.springframework.stereotype.Component;

@Component
public class JobPropsalVo {
	private int jpKey;
	private int aKeyFk;
	private String jpWorkingDate;
	private String jpCooperation;
	private String jpContent;
	
	public JobPropsalVo() {
		// TODO Auto-generated constructor stub
	}

	public JobPropsalVo(int jpKey, int aKeyFk, String jpWorkingDate, String jpCooperation, String jpContent) {
		this.jpKey = jpKey;
		this.aKeyFk = aKeyFk;
		this.jpWorkingDate = jpWorkingDate;
		this.jpCooperation = jpCooperation;
		this.jpContent = jpContent;
	}

	public int getJpKey() {
		return jpKey;
	}

	public void setJpKey(int jpKey) {
		this.jpKey = jpKey;
	}

	public int getaKeyFk() {
		return aKeyFk;
	}

	public void setaKeyFk(int aKeyFk) {
		this.aKeyFk = aKeyFk;
	}

	public String getJpWorkingDate() {
		return jpWorkingDate;
	}

	public void setJpWorkingDate(String jpWorkingDate) {
		this.jpWorkingDate= jpWorkingDate;
	}

	public String getJpCooperation() {
		return jpCooperation;
	}

	public void setJpCooperation(String jpCooperation) {
		this.jpCooperation = jpCooperation;
	}

	public String getJpContent() {
		return jpContent;
	}

	public void setJpContent(String jpContent) {
		this.jpContent = jpContent;
	}

	@Override
	public String toString() {
		return "JobPropsalVo [jpKey=" + jpKey + ", aKeyFk=" + aKeyFk + ", jpWorkingDate=" + jpWorkingDate
				+ ", jpCooperation=" + jpCooperation + ", jpContent=" + jpContent + "]";
	}
	
}
