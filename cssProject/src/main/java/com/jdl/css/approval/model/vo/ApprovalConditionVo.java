package com.jdl.css.approval.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.jdl.css.employee.model.vo.EmployeeVo;

@Component
public class ApprovalConditionVo {

	private int acKey;
	private int aKeyFk;
	private int acApproverFk;
	private int acCondition;
	private Date acApprovalDate;
	private EmployeeVo approver;
	
	public ApprovalConditionVo() {
		// TODO Auto-generated constructor stub
	}
	public ApprovalConditionVo(int acKey, int aKeyFk, int acApproverFk, int acCondition, Date acApprovalDate,
			EmployeeVo approver) {
		super();
		this.acKey = acKey;
		this.aKeyFk = aKeyFk;
		this.acApproverFk = acApproverFk;
		this.acCondition = acCondition;
		this.acApprovalDate = acApprovalDate;
		this.approver = approver;
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

	public int getAcApproverFk() {
		return acApproverFk;
	}

	public void setAcApproverFk(int acApproverFk) {
		this.acApproverFk = acApproverFk;
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
	public EmployeeVo getApprover() {
		return approver;
	}
	public void setApprover(EmployeeVo approver) {
		this.approver = approver;
	}
	@Override
	public String toString() {
		return "ApprovalConditionVo [acKey=" + acKey + ", aKeyFk=" + aKeyFk + ", acApproverFk=" + acApproverFk
				+ ", acCondition=" + acCondition + ", acApprovalDate=" + acApprovalDate + ", approver=" + approver
				+ "]";
	}

	
	
	
}
