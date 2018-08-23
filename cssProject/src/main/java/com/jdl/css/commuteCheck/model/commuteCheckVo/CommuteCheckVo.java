package com.jdl.css.commuteCheck.model.commuteCheckVo;

import java.sql.Date;

public class CommuteCheckVo {
	
	private int employeeNumber; //사원 번호
	private Date inDate; //일
	private Date inTime; //출근시간
	private Date outTime; //퇴근시간
	private int company; //회사키
	
	private String strInTime;
	private String strOutTime;

	public CommuteCheckVo(){
		
	}

	public CommuteCheckVo(int employeeNumber, Date inDate, Date inTime, Date outTime,
			int company) {
		this.employeeNumber = employeeNumber;
		this.inDate = inDate;
		this.inTime = inTime;
		this.outTime = outTime;
		this.company = company;
	}

	public int getEmployeeNumber() {
		return employeeNumber;
	}

	public void setEmployeeNumber(int employeeNumber) {
		this.employeeNumber = employeeNumber;
	}



	public String getStrInTime() {
		return strInTime;
	}

	public void setStrInTime(String strInTime) {
		this.strInTime = strInTime;
	}

	public String getStrOutTime() {
		return strOutTime;
	}

	public void setStrOutTime(String strOutTime) {
		this.strOutTime = strOutTime;
	}

	public Date getInDate() {
		return inDate;
	}

	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}

	public Date getInTime() {
		return inTime;
	}

	public void setInTime(Date inTime) {
		this.inTime = inTime;
	}

	public Date getOutTime() {
		return outTime;
	}

	public void setOutTime(Date outTime) {
		this.outTime = outTime;
	}

	public int getCompany() {
		return company;
	}

	public void setCompany(int company) {
		this.company = company;
	}

	
	
	@Override
	public String toString() {
		return "CommuteCheckVo [employeeNumber=" + employeeNumber + ", inDate=" + inDate + ", inTime=" + inTime
				+ ", outTime=" + outTime + ", company=" + company + "]";
	}

	
	
}
