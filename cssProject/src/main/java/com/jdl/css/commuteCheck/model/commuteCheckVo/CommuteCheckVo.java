package com.jdl.css.commuteCheck.model.commuteCheckVo;

import java.sql.Date;

public class CommuteCheckVo {
	private int id;
	private int eKey; //사원 번호
	private String inDate; //일
	private Date inTime; //출근시간
	private Date outTime; //퇴근시간
	private int cKeyFk; //회사키
	
	private String strInTime;
	private String strOutTime;

	public int geteKey() {
		return eKey;
	}

	public void seteKey(int eKey) {
		this.eKey = eKey;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	public CommuteCheckVo(){
		
	}


	public CommuteCheckVo(int id, int eKey, String inDate, Date inTime, Date outTime, int cKeyFk, String strInTime,
			String strOutTime){
		this.id = id;
		this.eKey = eKey;
		this.inDate = inDate;
		this.inTime = inTime;
		this.outTime = outTime;
		this.cKeyFk = cKeyFk;
	}

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEKey() {
		return eKey;
	}

	public void setEKey(int eKey) {
		this.eKey = eKey;
	}

	public String getStrInTime() {
		return strInTime;
	}

	public void setStrInTime(String strInTime) {
		this.strInTime = strInTime;
	}

	public String getStrOutTime() {
		return strOutTime;
	}

	public void setStrOutTime(String strOutTime) {
		this.strOutTime = strOutTime;
	}

	public String getInDate() {
		return inDate;
	}

	public void setInDate(String inDate) {
		this.inDate = inDate;
	}

	public Date getInTime() {
		return inTime;
	}

	public void setInTime(Date inTime) {
		this.inTime = inTime;
	}

	public Date getOutTime() {
		return outTime;
	}

	public void setOutTime(Date outTime) {
		this.outTime = outTime;
	}

	public int getCKeyFk() {
		return cKeyFk;
	}

	public void setCKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	@Override
	public String toString() {
		return "CommuteCheckVo [id=" + id + ", eKey=" + eKey + ", inDate=" + inDate + ", inTime=" + inTime
				+ ", outTime=" + outTime + ", cKeyFk=" + cKeyFk + ", strInTime=" + strInTime + ", strOutTime="
				+ strOutTime + "]";
	}

	


	
	
}
