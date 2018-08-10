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
	private String cMileage;
	private Date cCloseDay;
	private int cLevel;
	private int coordKeyFk;
	
	private int coordKey;
	private String city;
	private String lat;
	private String lng;
	
	private int count;
	
	private int per;
	
	public CompanyVo(){}

	
	public CompanyVo(int cKey, int cLevel) {
		super();
		this.cKey = cKey;
		this.cLevel = cLevel;
	}


	public CompanyVo(int cKey, String cName, String cOwner, String cAddress, String cLogo, String cSign, String cQrcode,
			String cMileage, Date cCloseDay, int cLevel, int coordKeyFk, int coordKey, String city, String lat,
			String lng, int count, int per) {
		super();
		this.cKey = cKey;
		this.cName = cName;
		this.cOwner = cOwner;
		this.cAddress = cAddress;
		this.cLogo = cLogo;
		this.cSign = cSign;
		this.cQrcode = cQrcode;
		this.cMileage = cMileage;
		this.cCloseDay = cCloseDay;
		this.cLevel = cLevel;
		this.coordKeyFk = coordKeyFk;
		this.coordKey = coordKey;
		this.city = city;
		this.lat = lat;
		this.lng = lng;
		this.count = count;
		this.per = per;
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

	public String getcMileage() {
		return cMileage;
	}

	public void setcMileage(String cMileage) {
		this.cMileage = cMileage;
	}

	public Date getcCloseDay() {
		return cCloseDay;
	}

	public void setcCloseDay(Date cCloseDay) {
		this.cCloseDay = cCloseDay;
	}

	public int getcLevel() {
		return cLevel;
	}

	public void setcLevel(int cLevel) {
		this.cLevel = cLevel;
	}
	
	


	public int getCoordKeyFk() {
		return coordKeyFk;
	}


	public void setCoordKeyFk(int coordKeyFk) {
		this.coordKeyFk = coordKeyFk;
	}


	public int getCoordKey() {
		return coordKey;
	}


	public void setCoordKey(int coordKey) {
		this.coordKey = coordKey;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getLat() {
		return lat;
	}


	public void setLat(String lat) {
		this.lat = lat;
	}


	public String getLng() {
		return lng;
	}


	public void setLng(String lng) {
		this.lng = lng;
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


	@Override
	public String toString() {
		return "CompanyVo [cKey=" + cKey + ", cName=" + cName + ", cOwner=" + cOwner + ", cAddress=" + cAddress
				+ ", cLogo=" + cLogo + ", cSign=" + cSign + ", cQrcode=" + cQrcode + ", cMileage=" + cMileage
				+ ", cCloseDay=" + cCloseDay + ", cLevel=" + cLevel + ", coordKeyFk=" + coordKeyFk + ", coordKey="
				+ coordKey + ", city=" + city + ", lat=" + lat + ", lng=" + lng + ", count=" + count + ", per=" + per
				+ "]";
	}


	


	


	

	
	
	
	
}
