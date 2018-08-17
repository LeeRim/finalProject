package com.jdl.css.employee.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.common.model.vo.DivisionVo;

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
    private String eJob;
    private String eDepart;
    private String eAddress;
    private String eExten;
    private String ePhone;
    private String eEmail;
    private Date eBirth;
    private Date eHireDate;
    private Date eEntDate;
    private char eEntYn;
    private String ePhoto;
    
    private String job;
    private String department;
    
    private int divInfolevel;
    private EmployeeVo instead;
    
//    resultMap용
    private List<DivisionVo> division;
    public EmployeeVo() {
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

	public String geteJob() {
		return eJob;
	}

	public void seteJob(String eJob) {
		this.eJob = eJob;
	}

	public String geteDepart() {
		return eDepart;
	}

	public void seteDepart(String eDepart) {
		this.eDepart = eDepart;
	}

	public String geteAddress() {
		return eAddress;
	}

	public void seteAddress(String eAddress) {
		this.eAddress = eAddress;
	}

	public String geteExten() {
		return eExten;
	}

	public void seteExten(String eExten) {
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

	public Date geteBirth() {
		return eBirth;
	}

	public void seteBirth(Date eBirth) {
		this.eBirth = eBirth;
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
	
	

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public void setePhoto(String ePhoto) {
		this.ePhoto = ePhoto;
	}
	
	public List<DivisionVo> getDivision() {
		return division;
	}

	public void setDivision(List<DivisionVo> division) {
		this.division = division;
	}

	
	
	
	public int getDivInfolevel() {
		return divInfolevel;
	}



	public void setDivInfolevel(int divInfolevel) {
		this.divInfolevel = divInfolevel;
	}

	public EmployeeVo getInstead() {
		return instead;
	}

	public void setInstead(EmployeeVo instead) {
		this.instead = instead;
	}

	@Override
	public String toString() {
		return "EmployeeVo [eKey=" + eKey + ", eNo=" + eNo + ", cKeyFk=" + cKeyFk + ", eType=" + eType + ", eId=" + eId
				+ ", ePwd=" + ePwd + ", eName=" + eName + ", eJobcodeFk=" + eJobcodeFk + ", eDepartFk=" + eDepartFk
				+ ", eJob=" + eJob + ", eDepart=" + eDepart + ", eAddress=" + eAddress + ", eExten=" + eExten
				+ ", ePhone=" + ePhone + ", eEmail=" + eEmail + ", eBirth=" + eBirth + ", eHireDate=" + eHireDate
				+ ", eEntDate=" + eEntDate + ", eEntYn=" + eEntYn + ", ePhoto=" + ePhoto + ", job=" + job
				+ ", department=" + department + ", divInfolevel=" + divInfolevel + ", instead=" + instead
				+ ", division=" + division + "]";
	}

	

}
