package com.jdl.css.common.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class PaymentVo {
	private int cKeyFk;
	private String payMileage;
	private Date payDate;
	private int payVoucher;
	
	private String allmonth;
	private int level1;
	private int level2;
	private int level3;
	private int sumsales;
	
	private int allcount;
	private int count;
	private int per;
	
	public PaymentVo(){}
	
	public PaymentVo(int cKeyFk, String payMileage, int payVoucher){
		this.cKeyFk = cKeyFk;
		this.payMileage = payMileage;
		this.payVoucher = payVoucher;
	}
	

	public PaymentVo(int cKeyFk, String payMileage, Date payDate, int payVoucher, String allmonth, int level1,
			int level2, int level3, int sumsales, int count, int per, int allcount) {
		super();
		this.cKeyFk = cKeyFk;
		this.payMileage = payMileage;
		this.payDate = payDate;
		this.payVoucher = payVoucher;
		this.allmonth = allmonth;
		this.level1 = level1;
		this.level2 = level2;
		this.level3 = level3;
		this.sumsales = sumsales;
		this.count = count;
		this.per = per;
		this.allcount = allcount;
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


	public int getPayVoucher() {
		return payVoucher;
	}

	public void setPayVoucher(int payVoucher) {
		this.payVoucher = payVoucher;
	}
	


	public String getAllmonth() {
		return allmonth;
	}

	public void setAllmonth(String allmonth) {
		this.allmonth = allmonth;
	}

	public int getLevel1() {
		return level1;
	}

	public void setLevel1(int level1) {
		this.level1 = level1;
	}

	public int getLevel2() {
		return level2;
	}

	public void setLevel2(int level2) {
		this.level2 = level2;
	}

	public int getLevel3() {
		return level3;
	}

	public void setLevel3(int level3) {
		this.level3 = level3;
	}
	
	

	public int getSumsales() {
		return sumsales;
	}

	public void setSumsales(int sumsales) {
		this.sumsales = sumsales;
	}
	
	

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getPer() {
		return per;
	}

	public void setPer(int per) {
		this.per = per;
	}
	

	public int getAllcount() {
		return allcount;
	}

	public void setAllcount(int allcount) {
		this.allcount = allcount;
	}

	@Override
	public String toString() {
		return "PaymentVo [cKeyFk=" + cKeyFk + ", payMileage=" + payMileage + ", payDate=" + payDate + ", payVoucher="
				+ payVoucher + ", allmonth=" + allmonth + ", level1=" + level1 + ", level2=" + level2 + ", level3="
				+ level3 + ", sumsales=" + sumsales + ", allcount=" + allcount + ", count=" + count + ", per=" + per
				+ "]";
	}

	

	

	

	

	

	
	
	
	
	
}
