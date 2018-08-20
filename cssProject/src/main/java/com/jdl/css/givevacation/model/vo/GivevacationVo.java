package com.jdl.css.givevacation.model.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class GivevacationVo {
	
	private int gv_key; //기본키
	private int cKeyFk; //회사키
	private int gvYear; //근속년수
	private int gvVacaDate;//지급할 일수
	private Date gvDate;//휴가를 지급할 날짜

	public GivevacationVo(){
		
	}

	public GivevacationVo(int gv_key, int cKeyFk, int gvYear, int gvVacaDate, Date gvDate) {
		this.gv_key = gv_key;
		this.cKeyFk = cKeyFk;
		this.gvYear = gvYear;
		this.gvVacaDate = gvVacaDate;
		this.gvDate = gvDate;
	}

	public int getGv_key() {
		return gv_key;
	}

	public void setGv_key(int gv_key) {
		this.gv_key = gv_key;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	public int getGvYear() {
		return gvYear;
	}

	public void setGvYear(int gvYear) {
		this.gvYear = gvYear;
	}

	public int getGvVacaDate() {
		return gvVacaDate;
	}

	public void setGvVacaDate(int gvVacaDate) {
		this.gvVacaDate = gvVacaDate;
	}

	public Date getGvDate() {
		return gvDate;
	}

	public void setGvDate(Date gvDate) {
		this.gvDate = gvDate;
	}

	@Override
	public String toString() {
		return "GivevacationVo [gv_key=" + gv_key + ", cKeyFk=" + cKeyFk + ", gvYear=" + gvYear + ", gvVacaDate="
				+ gvVacaDate + ", gvDate=" + gvDate + "]";
	}
	
	
}
