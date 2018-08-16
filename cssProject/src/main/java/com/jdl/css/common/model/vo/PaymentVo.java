package com.jdl.css.common.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class PaymentVo {
	private int cKeyFk;
	private String payMileage;
	private Date payDate;
	
	public PaymentVo(){}
	
	public PaymentVo(int cKeyFk, String payMileage){
		this.cKeyFk = cKeyFk;
		this.payMileage = payMileage;
	}
	
	public PaymentVo(int cKeyFk, String payMileage, Date payDate) {
		super();
		this.cKeyFk = cKeyFk;
		this.payMileage = payMileage;
		this.payDate = payDate;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	public String getPayMileage() {
		return payMileage;
	}

	public void setPayMileage(String payMileage) {
		this.payMileage = payMileage;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	@Override
	public String toString() {
		return "PaymentVo [cKeyFk=" + cKeyFk + ", payMileage=" + payMileage + ", payDate=" + payDate + "]";
	}
	
	
	
	
}
