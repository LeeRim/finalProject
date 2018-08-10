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
	
	private List<String> receive;
	private List<Integer> receiveNo;
	private int receiver;
	
	//resultMap용
	private List<AttachmentVo> attach;
	private List<EmployeeVo> employee;
	
	
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

	@Override
	public String toString() {
		return "NoteVo [snKey=" + snKey + ", snSenderFk=" + snSenderFk + ", snTitle=" + snTitle + ", snContent="
				+ snContent + ", snWriteDate=" + snWriteDate + ", snDeleteYn=" + snDeleteYn + ", snAttachYn="
				+ snAttachYn + ", receive=" + receive + ", receiveNo=" + receiveNo + ", receiver=" + receiver
				+ ", attach=" + attach + ", employee=" + employee + "]";
	}
	
	
	
	
	
	
}
