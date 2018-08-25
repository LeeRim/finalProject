package com.jdl.css.common.model.vo;

public class DivisionVo {
	private int divKey;
	private int cKeyFk;
	private int divType;
	private String divInfo;
	private int divInfolevel;
	
	public DivisionVo() {
	}

	public int getDivKey() {
		return divKey;
	}

	public void setDivKey(int divKey) {
		this.divKey = divKey;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	public int getDivType() {
		return divType;
	}

	public void setDivType(int divType) {
		this.divType = divType;
	}

	public String getDivInfo() {
		return divInfo;
	}

	public void setDivInfo(String divInfo) {
		this.divInfo = divInfo;
	}
	
	
	
	
	public int getDivInfolevel() {
		return divInfolevel;
	}

	public void setDivInfolevel(int divInfolevel) {
		this.divInfolevel = divInfolevel;
	}

	@Override
	public String toString() {
		return "DivisionVo [divKey=" + divKey + ", cKeyFk=" + cKeyFk + ", divType=" + divType + ", divInfo=" + divInfo
				+ ", divInfolevel=" + divInfolevel + "]";
	}
	
	
}
