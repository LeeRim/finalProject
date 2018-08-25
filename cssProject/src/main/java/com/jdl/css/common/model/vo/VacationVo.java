package com.jdl.css.common.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class VacationVo {
	private int vKey;
	private int cKeyFk;
	private int eKeyFk;
	private double vUseddate;
	private String vStartdate;
	private String vRecalldate;
	
	private int workyear;
	
	public VacationVo() {
	}

	public VacationVo(int vKey, int cKeyFk, int eKeyFk, double vUseddate, String vStartdate, String vRecalldate) {
		this.vKey = vKey;
		this.cKeyFk = cKeyFk;
		this.eKeyFk = eKeyFk;
		this.vUseddate = vUseddate;
		this.vStartdate = vStartdate;
		this.vRecalldate = vRecalldate;
	}

	public int getvKey() {
		return vKey;
	}

	public void setvKey(int vKey) {
		this.vKey = vKey;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	public int geteKeyFk() {
		return eKeyFk;
	}

	public void seteKeyFk(int eKeyFk) {
		this.eKeyFk = eKeyFk;
	}

	public double getvUseddate() {
		return vUseddate;
	}

	public void setvUseddate(double vUseddate) {
		this.vUseddate = vUseddate;
	}

	public String getvStartdate() {
		return vStartdate;
	}

	public void setvStartdate(String vStartdate) {
		this.vStartdate = vStartdate;
	}

	public String getvRecalldate() {
		return vRecalldate;
	}

	public void setvRecalldate(String vRecalldate) {
		this.vRecalldate = vRecalldate;
	}

	public int getWorkyear() {
		return workyear;
	}

	public void setWorkyear(int workyear) {
		this.workyear = workyear;
	}

	@Override
	public String toString() {
		return "VacationVo [vKey=" + vKey + ", cKeyFk=" + cKeyFk + ", eKeyFk=" + eKeyFk + ", vUseddate=" + vUseddate
				+ ", vStartdate=" + vStartdate + ", vRecalldate=" + vRecalldate + ", workyear=" + workyear + "]";
	}

	
	
}
