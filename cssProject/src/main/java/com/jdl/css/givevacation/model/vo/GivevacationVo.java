package com.jdl.css.givevacation.model.vo;


import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class GivevacationVo {
	
	private int gvKey; //기본키
	private int cKeyFk; //회사키
	private int gvYear; //근속년수
	private int gvVacadate;//지급할 일수
	private String gvDate;//휴가를 지급할 날짜

	public GivevacationVo(){
		
	}

	
	

	public GivevacationVo(int gvKey, int cKeyFk, int gvYear, int gvVacadate, String gvDate) {
		super();
		this.gvKey = gvKey;
		this.cKeyFk = cKeyFk;
		this.gvYear = gvYear;
		this.gvVacadate = gvVacadate;
		this.gvDate = gvDate;
	}




	public int getGvKey() {
		return gvKey;
	}



	public void setGvKey(int gvKey) {
		this.gvKey = gvKey;
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

	


	public int getGvVacadate() {
		return gvVacadate;
	}




	public void setGvVacadate(int gvVacadate) {
		this.gvVacadate = gvVacadate;
	}




	public String getGvDate() {
		return gvDate;
	}



	public void setGvDate(String gvDate) {
		this.gvDate = gvDate;
	}




	@Override
	public String toString() {
		return "GivevacationVo [gvKey=" + gvKey + ", cKeyFk=" + cKeyFk + ", gvYear=" + gvYear + ", gvVacadate="
				+ gvVacadate + ", gvDate=" + gvDate + "]";
	}



	


	
	
}
