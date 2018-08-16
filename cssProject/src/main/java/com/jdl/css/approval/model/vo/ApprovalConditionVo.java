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
	private String acApprovalType;
	private Date acApprovalDate;
	private EmployeeVo approver;

	private String acType;
	private String condition;

	public ApprovalConditionVo() {
		// TODO Auto-generated constructor stub
	}

	public ApprovalConditionVo(int acKey, int aKeyFk, int acApproverFk, int acCondition, String acApprovalType,
			Date acApprovalDate, EmployeeVo approver, String acType, String condition) {
		this.acKey = acKey;
		this.aKeyFk = aKeyFk;
		this.acApproverFk = acApproverFk;
		this.acCondition = acCondition;
		this.acApprovalType = acApprovalType;
		this.acApprovalDate = acApprovalDate;
		this.approver = approver;
		this.acType = acType;
		this.condition = condition;
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
		if(acCondition==1){
			this.condition="승인";
		}else if(acCondition==2){
			this.condition="반려";
		}
	}

	public String getAcApprovalType() {
		return acApprovalType;
	}

	public void setAcApprovalType(String acApprovalType) {
		this.acApprovalType = acApprovalType;
		if(acApprovalType!=null){
			String[] arr = acApprovalType.split(",");
			for(String a:arr){
				if(a.equals("3")){
					this.acType+="(전결)";
				}else if(a.equals("4")){
					this.acType+="(선결)";
				}else if(a.equals("5")){
					this.acType+="(대결)";
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
				+ ", acCondition=" + acCondition + ", acApprovalType=" + acApprovalType + ", acApprovalDate="
				+ acApprovalDate + ", approver=" + approver + ", acType=" + acType + ", condition=" + condition + "]";
	}

}
