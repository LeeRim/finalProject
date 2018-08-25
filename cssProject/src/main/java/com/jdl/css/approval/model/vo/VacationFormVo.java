package com.jdl.css.approval.model.vo;

import org.springframework.stereotype.Component;

@Component
public class VacationFormVo {
	private int vfKey;
	private int aKeyFk;
	private String vfType;
	private String vfStartdate;
	private String vfEnddate;
	private int vfHalfflag;
	private String vfReason;
	
	//사용일수
	private double vfUseddate;
	
	
	public VacationFormVo() {}

	public VacationFormVo(int vfKey, int aKeyFk, String vfType, String vfStartdate, String vfEnddate, int vfHalfflag,
			String vfReason, double vfUseddate) {
		super();
		this.vfKey = vfKey;
		this.aKeyFk = aKeyFk;
		this.vfType = vfType;
		this.vfStartdate = vfStartdate;
		this.vfEnddate = vfEnddate;
		this.vfHalfflag = vfHalfflag;
		this.vfReason = vfReason;
		this.vfUseddate = vfUseddate;
	}



	public int getVfKey() {
		return vfKey;
	}


	public void setVfKey(int vfKey) {
		this.vfKey = vfKey;
	}


	public int getaKeyFk() {
		return aKeyFk;
	}


	public void setaKeyFk(int aKeyFk) {
		this.aKeyFk = aKeyFk;
	}


	public String getVfType() {
		return vfType;
	}


	public void setVfType(String vfType) {
		this.vfType = vfType;
	}


	public String getVfStartdate() {
		return vfStartdate;
	}


	public void setVfStartdate(String vfStartdate) {
		this.vfStartdate = vfStartdate;
	}


	public String getVfEnddate() {
		return vfEnddate;
	}


	public void setVfEnddate(String vfEnddate) {
		this.vfEnddate = vfEnddate;
	}


	public int getVfHalfflag() {
		return vfHalfflag;
	}


	public void setVfHalfflag(int vfHalfflag) {
		this.vfHalfflag = vfHalfflag;
	}


	public String getVfReason() {
		return vfReason;
	}


	public void setVfReason(String vfReason) {
		this.vfReason = vfReason;
	}
	

	public double getvfUseddate() {
		return vfUseddate;
	}

	public void setvfUseddate(double vfUseddate) {
		this.vfUseddate = vfUseddate;
	}

	@Override
	public String toString() {
		return "VacationFormVo [vfKey=" + vfKey + ", aKeyFk=" + aKeyFk + ", vfType=" + vfType + ", vfStartdate="
				+ vfStartdate + ", vfEnddate=" + vfEnddate + ", vfHalfflag=" + vfHalfflag + ", vfReason=" + vfReason
				+ ", vfUseddate=" + vfUseddate + "]";
	}

	
	
	
	
	
	
}
