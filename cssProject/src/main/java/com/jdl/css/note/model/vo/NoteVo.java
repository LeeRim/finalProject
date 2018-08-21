package com.jdl.css.note.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.common.model.vo.DivisionVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Component
public class NoteVo {
	
	private int snKey;
	private int snSenderFk; //보낸사람 회원키
	private String snTitle;
	private String snContent;
	private Date snWriteDate;
	private String snDeleteYn;
	private String snAttachYn;
	private String snTrashdeleteYn;
	
	private List<String> receive;
	private List<Integer> receiveNo;
	private int receiver;
	private List<Integer> snKeies;
	
	//resultMap용
	private List<AttachmentVo> attach;
	private List<EmployeeVo> employee;
	
	
	//search용
	private String keyword;
	
	//index page 용
	private int rnKey;
	private String eName;
	private String ePhoto;
	private String job;
	private String department;
	public NoteVo() {
	}

	public int getSnKey() {
		return snKey;
	}

	public void setSnKey(int snKey) {
		this.snKey = snKey;
	}

	public int getSnSenderFk() {
		return snSenderFk;
	}

	public void setSnSenderFk(int snSenderFk) {
		this.snSenderFk = snSenderFk;
	}

	public String getSnTitle() {
		return snTitle;
	}

	public void setSnTitle(String snTitle) {
		this.snTitle = snTitle;
	}

	public String getSnContent() {
		return snContent;
	}

	public void setSnContent(String snContent) {
		this.snContent = snContent;
	}

	public Date getSnWriteDate() {
		return snWriteDate;
	}

	public void setSnWriteDate(Date snWriteDate) {
		this.snWriteDate = snWriteDate;
	}

	public List<String> getReceive() {
		return receive;
	}

	public void setReceive(List<String> receive) {
		this.receive = receive;
	}

	public List<Integer> getReceiveNo() {
		return receiveNo;
	}

	public void setReceiveNo(List<Integer> receiveNo) {
		this.receiveNo = receiveNo;
	}
	
	public int getReceiver() {
		return receiver;
	}

	public void setReceiver(int receiver) {
		this.receiver = receiver;
	}

	public List<AttachmentVo> getAttach() {
		return attach;
	}

	public void setAttach(List<AttachmentVo> attach) {
		this.attach = attach;
	}

	public List<EmployeeVo> getEmployee() {
		return employee;
	}

	public void setEmployee(List<EmployeeVo> employee) {
		this.employee = employee;
	}
	
	public String getSnDeleteYn() {
		return snDeleteYn;
	}

	public void setSnDeleteYn(String snDeleteYn) {
		this.snDeleteYn = snDeleteYn;
	}

	public String getSnAttachYn() {
		return snAttachYn;
	}

	public void setSnAttachYn(String snAttachYn) {
		this.snAttachYn = snAttachYn;
	}
	
	public List<Integer> getSnKeies() {
		return snKeies;
	}

	public void setSnKeies(List<Integer> snKeies) {
		this.snKeies = snKeies;
	}
	
	public String getSnTrashdeleteYn() {
		return snTrashdeleteYn;
	}

	public void setSnTrashdeleteYn(String snTrashdeleteYn) {
		this.snTrashdeleteYn = snTrashdeleteYn;
	}
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public int getRnKey() {
		return rnKey;
	}

	public void setRnKey(int rnKey) {
		this.rnKey = rnKey;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String getePhoto() {
		return ePhoto;
	}

	public void setePhoto(String ePhoto) {
		this.ePhoto = ePhoto;
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

	@Override
	public String toString() {
		return "NoteVo [snKey=" + snKey + ", snSenderFk=" + snSenderFk + ", snTitle=" + snTitle + ", snContent="
				+ snContent + ", snWriteDate=" + snWriteDate + ", snDeleteYn=" + snDeleteYn + ", snAttachYn="
				+ snAttachYn + ", snTrashdeleteYn=" + snTrashdeleteYn + ", receive=" + receive + ", receiveNo="
				+ receiveNo + ", receiver=" + receiver + ", snKeies=" + snKeies + ", attach=" + attach + ", employee="
				+ employee + ", keyword=" + keyword + ", rnKey=" + rnKey + ", eName=" + eName + ", ePhoto=" + ePhoto
				+ ", job=" + job + ", department=" + department + "]";
	}

	
	
}
