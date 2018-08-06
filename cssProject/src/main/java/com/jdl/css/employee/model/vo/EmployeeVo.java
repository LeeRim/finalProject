package com.jdl.css.employee.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class EmployeeVo {
	
	private int eKey;
    private String eNo;
    private int cKeyFk;
    private char eType;
    private String eId;
    private String ePwd;
    private String eName;
    private int eJobcodeFk;
    private int eDepartFk;
    private String eAddress;
    private int eExten;
    private String ePhone;
    private String eEmail;
    private Date eHireDate;
    private Date eEntDate;
    private char eEntYn;
    private String ePhoto;
    
    public EmployeeVo() {
		// TODO Auto-generated constructor stub
	}

	public EmployeeVo(int eKey, String eNo, int cKeyFk, char eType, String eId, String ePwd, String eName,
			int eJobcodeFk, int eDepartFk, String eAddress, int eExten, String ePhone, String eEmail, Date eHireDate,
			Date eEntDate, char eEntYn, String ePhoto) {
		this.eKey = eKey;
		this.eNo = eNo;
		this.cKeyFk = cKeyFk;
		this.eType = eType;
		this.eId = eId;
		this.ePwd = ePwd;
		this.eName = eName;
		this.eJobcodeFk = eJobcodeFk;
		this.eDepartFk = eDepartFk;
		this.eAddress = eAddress;
		this.eExten = eExten;
		this.ePhone = ePhone;
		this.eEmail = eEmail;
		this.eHireDate = eHireDate;
		this.eEntDate = eEntDate;
		this.eEntYn = eEntYn;
		this.ePhoto = ePhoto;
	}

	public int geteKey() {
		return eKey;
	}

	public void seteKey(int eKey) {
		this.eKey = eKey;
	}

	public String geteNo() {
		return eNo;
	}

	public void seteNo(String eNo) {
		this.eNo = eNo;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	public char geteType() {
		return eType;
	}

	public void seteType(char eType) {
		this.eType = eType;
	}

	public String geteId() {
		return eId;
	}

	public void seteId(String eId) {
		this.eId = eId;
	}

	public String getePwd() {
		return ePwd;
	}

	public void setePwd(String ePwd) {
		this.ePwd = ePwd;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public int geteJobcodeFk() {
		return eJobcodeFk;
	}

	public void seteJobcodeFk(int eJobcodeFk) {
		this.eJobcodeFk = eJobcodeFk;
	}

	public int geteDepartFk() {
		return eDepartFk;
	}

	public void seteDepartFk(int eDepartFk) {
		this.eDepartFk = eDepartFk;
	}

	public String geteAddress() {
		return eAddress;
	}

	public void seteAddress(String eAddress) {
		this.eAddress = eAddress;
	}

	public int geteExten() {
		return eExten;
	}

	public void seteExten(int eExten) {
		this.eExten = eExten;
	}

	public String getePhone() {
		return ePhone;
	}

	public void setePhone(String ePhone) {
		this.ePhone = ePhone;
	}

	public String geteEmail() {
		return eEmail;
	}

	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}

	public Date geteHireDate() {
		return eHireDate;
	}

	public void seteHireDate(Date eHireDate) {
		this.eHireDate = eHireDate;
	}

	public Date geteEntDate() {
		return eEntDate;
	}

	public void seteEntDate(Date eEntDate) {
		this.eEntDate = eEntDate;
	}

	public char geteEntYn() {
		return eEntYn;
	}

	public void seteEntYn(char eEntYn) {
		this.eEntYn = eEntYn;
	}

	public String getePhoto() {
		return ePhoto;
	}

	public void setePhoto(String ePhoto) {
		this.ePhoto = ePhoto;
	}

	@Override
	public String toString() {
		return "EmployeeVo [eKey=" + eKey + ", eNo=" + eNo + ", cKeyFk=" + cKeyFk + ", eType=" + eType + ", eId=" + eId
				+ ", ePwd=" + ePwd + ", eName=" + eName + ", eJobcodeFk=" + eJobcodeFk + ", eDepartFk=" + eDepartFk
				+ ", eAddress=" + eAddress + ", eExten=" + eExten + ", ePhone=" + ePhone + ", eEmail=" + eEmail
				+ ", eHireDate=" + eHireDate + ", eEntDate=" + eEntDate + ", eEntYn=" + eEntYn + ", ePhoto=" + ePhoto
				+ "]";
	}
    
    
}
