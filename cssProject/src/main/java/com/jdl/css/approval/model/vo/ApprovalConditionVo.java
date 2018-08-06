package com.jdl.css.approval.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ApprovalConditionVo {

	private int acKey;
	private int aKeyFk;
	private int acApprovalFk;
	private int acCondition;
	private Date acApprovalDate;
	
	public ApprovalConditionVo() {
		// TODO Auto-generated constructor stub
	}
	
	public ApprovalConditionVo(int acKey, int aKeyFk, int acApprovalFk, int acCondition, Date acApprovalDate) {
		this.acKey = acKey;
		this.aKeyFk = aKeyFk;
		this.acApprovalFk = acApprovalFk;
		this.acCondition = acCondition;
		this.acApprovalDate = acApprovalDate;
	}
	public int getAcKey() {
		return acKey;
	}
	public void setAcKey(int acKey) {
		this.acKey = acKey;
	}
	public int getaKeyFk() {
		return aKeyFk;
	}
	public void setaKeyFk(int aKeyFk) {
		this.aKeyFk = aKeyFk;
	}
	public int getAcApprovalFk() {
		return acApprovalFk;
	}
	public void setAcApprovalFk(int acApprovalFk) {
		this.acApprovalFk = acApprovalFk;
	}
	public int getAcCondition() {
		return acCondition;
	}
	public void setAcCondition(int acCondition) {
		this.acCondition = acCondition;
	}
	public Date getAcApprovalDate() {
		return acApprovalDate;
	}
	public void setAcApprovalDate(Date acApprovalDate) {
		this.acApprovalDate = acApprovalDate;
	}

	@Override
	public String toString() {
		return "ApprovalConditionVo [acKey=" + acKey + ", aKeyFk=" + aKeyFk + ", acApprovalFk=" + acApprovalFk
				+ ", acCondition=" + acCondition + ", acApprovalDate=" + acApprovalDate + "]";
	}
	
	
}
