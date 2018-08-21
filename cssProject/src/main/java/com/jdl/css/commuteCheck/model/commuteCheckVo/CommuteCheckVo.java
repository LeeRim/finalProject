package com.jdl.css.commuteCheck.model.commuteCheckVo;

import java.sql.Date;

public class CommuteCheckVo {
	
	private int employeeNumber; //사원 번호
	private int inYear; //연도
	private int inMonth; //월
	private int inDate; //일
	private Date inTime; //출근시간
	private Date outTime; //퇴근시간
	private int company; //회사키

	public CommuteCheckVo(){
		
	}

	public CommuteCheckVo(int employeeNumber, int inYear, int inMonth, int inDate, Date inTime, Date outTime,
			int company) {
		this.employeeNumber = employeeNumber;
		this.inYear = inYear;
		this.inMonth = inMonth;
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

	public int getInYear() {
		return inYear;
	}

	public void setInYear(int inYear) {
		this.inYear = inYear;
	}

	public int getInMonth() {
		return inMonth;
	}

	public void setInMonth(int inMonth) {
		this.inMonth = inMonth;
	}

	public int getInDate() {
		return inDate;
	}

	public void setInDate(int inDate) {
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
		return "CommuteCheckVo [employeeNumber=" + employeeNumber + ", inYear=" + inYear + ", inMonth=" + inMonth
				+ ", inDate=" + inDate + ", inTime=" + inTime + ", outTime=" + outTime + ", company=" + company + "]";
	}

	
	
}
