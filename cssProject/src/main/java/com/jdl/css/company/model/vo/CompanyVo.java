package com.jdl.css.company.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class CompanyVo {
	private int cKey;
	private String cName;
	private String cOwner;
	private String cAddress;
	private String cLogo;
	private String cSign;
	private String cQrcode;
	private String mileage;
	private Date cCloseDay;
	private String cLevel;
	
	public CompanyVo(){}

	public CompanyVo(int cKey, String cName, String cOwner, String cAddress, String cLogo, String cSign, String cQrcode,
			String mileage, Date cCloseDay, String cLevel) {
		super();
		this.cKey = cKey;
		this.cName = cName;
		this.cOwner = cOwner;
		this.cAddress = cAddress;
		this.cLogo = cLogo;
		this.cSign = cSign;
		this.cQrcode = cQrcode;
		this.mileage = mileage;
		this.cCloseDay = cCloseDay;
		this.cLevel = cLevel;
	}

	public int getcKey() {
		return cKey;
	}

	public void setcKey(int cKey) {
		this.cKey = cKey;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcOwner() {
		return cOwner;
	}

	public void setcOwner(String cOwner) {
		this.cOwner = cOwner;
	}

	public String getcAddress() {
		return cAddress;
	}

	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}

	public String getcLogo() {
		return cLogo;
	}

	public void setcLogo(String cLogo) {
		this.cLogo = cLogo;
	}

	public String getcSign() {
		return cSign;
	}

	public void setcSign(String cSign) {
		this.cSign = cSign;
	}

	public String getcQrcode() {
		return cQrcode;
	}

	public void setcQrcode(String cQrcode) {
		this.cQrcode = cQrcode;
	}

	public String getMileage() {
		return mileage;
	}

	public void setMileage(String mileage) {
		this.mileage = mileage;
	}

	public Date getcCloseDay() {
		return cCloseDay;
	}

	public void setcCloseDay(Date cCloseDay) {
		this.cCloseDay = cCloseDay;
	}

	public String getcLevel() {
		return cLevel;
	}

	public void setcLevel(String cLevel) {
		this.cLevel = cLevel;
	}

	@Override
	public String toString() {
		return "CompanyVo [cKey=" + cKey + ", cName=" + cName + ", cOwner=" + cOwner + ", cAddress=" + cAddress
				+ ", cLogo=" + cLogo + ", cSign=" + cSign + ", cQrcode=" + cQrcode + ", mileage=" + mileage
				+ ", cCloseDay=" + cCloseDay + ", cLevel=" + cLevel + "]";
	}
	
	
	
}
