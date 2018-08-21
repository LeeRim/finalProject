package com.jdl.css.common.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class VacationVo {
	private int gvKey;                    //기본키
	private int cKeyFk;					  //회사키
	private int gvYear;					  //근속년수
	private int gvVacadate;			  //지급일수
	private Date gvDate;                //휴가지급날짜
	
	
	//Vacation사용 정보
	private int vUseddate;            //휴가 사용일수
    
	public VacationVo() {
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


	public Date getGvDate() {
		return gvDate;
	}


	public void setGvDate(Date gvDate) {
		this.gvDate = gvDate;
	}
	

	public int getvUseddate() {
		return vUseddate;
	}


	public void setvUseddate(int vUseddate) {
		this.vUseddate = vUseddate;
	}


	@Override
	public String toString() {
		return "VacationVo [gvKey=" + gvKey + ", cKeyFk=" + cKeyFk + ", gvYear=" + gvYear + ", gvVacadate=" + gvVacadate
				+ ", gvDate=" + gvDate + ", vUseddate=" + vUseddate + "]";
	}


}
