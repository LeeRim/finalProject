package com.jdl.css.commuteCheck.model.commuteCheckVo;

import java.sql.Date;

public class CommuteCheckVo {
	
	private int employeeNumber;
	private int inYear;
	private int inMonth;
	private int inDate;
	private Date inTime;
	private Date outTime;
	private int company;
	private int employee;
	
	
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
/*	public int getCompany() {
		return company;
	}
	public void setCompany(int company) {
		this.company = company;
	}
	public int getEmployee() {
		return employee;
	}
	public void setEmployee(int employee) {
		this.employee = employee;
	}
	*/
	@Override
	public String toString() {
		return "CommuteCheckVo [employeeNumber=" + employeeNumber + ", inYear=" + inYear + ", inMonth=" + inMonth
				+ ", inDate=" + inDate + ", inTime=" + inTime + ", outTime=" + outTime + ", company=" + company
				+ ", employee=" + employee + "]";
	}
	
	
}
