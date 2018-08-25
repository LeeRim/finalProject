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
    private String eType;
    private String eId;
    private String ePwd;
    private String eName;
    private int eJobcodeFk;
    private int eDepartFk;
    private String eAddress;
    private String eExten;
    private String ePhone;
    private String eEmail;
    private Date eBirth;
    private Date eHireDate;
    private Date eEntDate;
    private char eEntYn;
    private String ePhoto;
    private int eInstead;
    private int eState;
    
    private String job;
    private String department;
    
    //association 용
    private int divInfolevel;
    private EmployeeVo instead;
    
//    resultMap용
    private List<DivisionVo> division;
    
    //vacation 용
    private int totalVacation;				//총휴가
    private int remainingVacation;      //남은휴가
    
    
    //회사 정보
    private String cName;
    private int cLevel;
    private int workYears;
    //부서 count용
    private int count;
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

	public String geteType() {
		return eType;
	}


	public void seteType(String eType) {
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
	
	public int geteInstead() {
		return eInstead;
	}

	public void seteInstead(int eInstead) {
		this.eInstead = eInstead;
	}
	
	
	public int geteState() {
		return eState;
	}

	public void seteState(int eState) {
		this.eState = eState;
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
	
	public int getTotalVacation() {
		return totalVacation;
	}

	public void setTotalVacation(int totalVacation) {
		this.totalVacation = totalVacation;
	}

	public int getRemainingVacation() {
		return remainingVacation;
	}

	public void setRemainingVacation(int remainingVacation) {
		this.remainingVacation = remainingVacation;
	}

	public int getcLevel() {
		return cLevel;
	}

	public int getCount() {
		return count;
	}



	public void setCount(int count) {
		this.count = count;
	}

	public void setcLevel(int cLevel) {
		this.cLevel = cLevel;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}
	
	public int getWorkYears() {
		return workYears;
	}

	public void setWorkYears(int workYears) {
		this.workYears = workYears;
	}



	@Override
	public String toString() {
		return "EmployeeVo [eKey=" + eKey + ", eNo=" + eNo + ", cKeyFk=" + cKeyFk + ", eType=" + eType + ", eId=" + eId
				+ ", ePwd=" + ePwd + ", eName=" + eName + ", eJobcodeFk=" + eJobcodeFk + ", eDepartFk=" + eDepartFk
				+ ", eAddress=" + eAddress + ", eExten=" + eExten + ", ePhone=" + ePhone + ", eEmail=" + eEmail
				+ ", eBirth=" + eBirth + ", eHireDate=" + eHireDate + ", eEntDate=" + eEntDate + ", eEntYn=" + eEntYn
				+ ", ePhoto=" + ePhoto + ", eInstead=" + eInstead + ", eState=" + eState + ", job=" + job
				+ ", department=" + department + ", divInfolevel=" + divInfolevel + ", instead=" + instead
				+ ", division=" + division + ", totalVacation=" + totalVacation + ", remainingVacation="
				+ remainingVacation + ", cName=" + cName + ", cLevel=" + cLevel + ", workYears=" + workYears
				+ ", count=" + count + "]";
	}
	
	
}
