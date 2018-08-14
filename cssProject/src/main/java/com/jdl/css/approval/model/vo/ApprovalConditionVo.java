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
	private String acCondition;
	private Date acApprovalDate;
	private EmployeeVo approver;

	private String acType;
	private String condition;

	public ApprovalConditionVo() {
		// TODO Auto-generated constructor stub
	}

	public ApprovalConditionVo(int acKey, int aKeyFk, int acApproverFk, String acCondition, Date acApprovalDate,
			EmployeeVo approver) {
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

	public String getAcCondition() {
		return acCondition;
	}

	public void setAcCondition(String acCondition) {
		this.acCondition = acCondition;
		if (acCondition!=null) {
			this.condition = acCondition.split("/")[1];
			String[] arr = acCondition.split("/")[0].split(",");
			for (int i = 0; i < arr.length; i++) {
				if (arr[i] == "3") {
					this.acType += "(전결)";
				} else if (arr[i] == "4") {
					this.acType += "(선결)";
				} else if (arr[i] == "5") {
					this.acType += "(대결)";
				} else {
					this.acType = "";
				}
			}
		}
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

	
	public String getAcType() {
		return acType;
	}

	public void setAcType(String acType) {
		this.acType = acType;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	@Override
	public String toString() {
		return "ApprovalConditionVo [acKey=" + acKey + ", aKeyFk=" + aKeyFk + ", acApproverFk=" + acApproverFk
				+ ", acCondition=" + acCondition + ", acApprovalDate=" + acApprovalDate + ", approver=" + approver
				+ ", acType=" + acType + ", condition=" + condition + "]";
	}


}
