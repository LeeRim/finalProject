package com.jdl.css.note.model.vo;

import java.sql.Date;
import java.util.List;

import com.jdl.css.employee.model.vo.EmployeeVo;

public class ReceivenoteVo {
	
	private int rnKey;
	private int rnNoteFk;
	private int rnRecipientFk;
	private String rnReadYn;
	private String rnDeleteYn;
	
	private String name;
	private String job;
	
	private List<Integer> rnKeies;
	
//	receiveNoteList용
	private int snKey;
	private String snTitle;
	private Date snWriteDate;
	private String snAttachYn;
	private String eName;
	
	//search용
	private String keyword;
	
	public ReceivenoteVo() {
	}


	public int getRnKey() {
		return rnKey;
	}


	public void setRnKey(int rnKey) {
		this.rnKey = rnKey;
	}


	public int getRnNoteFk() {
		return rnNoteFk;
	}


	public void setRnNoteFk(int rnNoteFk) {
		this.rnNoteFk = rnNoteFk;
	}
	
	public int getRnRecipientFk() {
		return rnRecipientFk;
	}

	public void setRnRecipientFk(int rnRecipientFk) {
		this.rnRecipientFk = rnRecipientFk;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
	
	public String getRnReadYn() {
		return rnReadYn;
	}

	public void setRnReadYn(String rnReadYn) {
		this.rnReadYn = rnReadYn;
	}

	public String getRnDeleteYn() {
		return rnDeleteYn;
	}

	public void setRnDeleteYn(String rnDeleteYn) {
		this.rnDeleteYn = rnDeleteYn;
	}

	public int getSnKey() {
		return snKey;
	}

	public void setSnKey(int snKey) {
		this.snKey = snKey;
	}

	public String getSnTitle() {
		return snTitle;
	}

	public void setSnTitle(String snTitle) {
		this.snTitle = snTitle;
	}


	public Date getSnWriteDate() {
		return snWriteDate;
	}


	public void setSnWriteDate(Date snWriteDate) {
		this.snWriteDate = snWriteDate;
	}


	public String getSnAttachYn() {
		return snAttachYn;
	}


	public void setSnAttachYn(String snAttachYn) {
		this.snAttachYn = snAttachYn;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}
	
	public List<Integer> getRnKeies() {
		return rnKeies;
	}

	public void setRnKeies(List<Integer> rnKeies) {
		this.rnKeies = rnKeies;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "ReceivenoteVo [rnKey=" + rnKey + ", rnNoteFk=" + rnNoteFk + ", rnRecipientFk=" + rnRecipientFk
				+ ", rnReadYn=" + rnReadYn + ", rnDeleteYn=" + rnDeleteYn + ", name=" + name + ", job=" + job
				+ ", rnKeies=" + rnKeies + ", snKey=" + snKey + ", snTitle=" + snTitle + ", snWriteDate=" + snWriteDate
				+ ", snAttachYn=" + snAttachYn + ", eName=" + eName + ", keyword=" + keyword + "]";
	}
	
}
