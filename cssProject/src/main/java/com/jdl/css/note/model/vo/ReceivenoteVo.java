package com.jdl.css.note.model.vo;

import java.util.List;

import com.jdl.css.employee.model.vo.EmployeeVo;

public class ReceivenoteVo {
	
	private int rnKey;
	private int rnNoteFk;
	private int rnRecipienFk;
	private char rnReadYn;
	private char rnDeleteYn;
	
	private String name;
	private String job;
	
	
//	resultMap용
	
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


	public int getRnRecipienFk() {
		return rnRecipienFk;
	}


	public void setRnRecipienFk(int rnRecipienFk) {
		this.rnRecipienFk = rnRecipienFk;
	}


	public char getRnReadYn() {
		return rnReadYn;
	}


	public void setRnReadYn(char rnReadYn) {
		this.rnReadYn = rnReadYn;
	}


	public char getRnDeleteYn() {
		return rnDeleteYn;
	}


	public void setRnDeleteYn(char rnDeleteYn) {
		this.rnDeleteYn = rnDeleteYn;
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


	@Override
	public String toString() {
		return "ReceivenoteVo [rnKey=" + rnKey + ", rnNoteFk=" + rnNoteFk + ", rnRecipienFk=" + rnRecipienFk
				+ ", rnReadYn=" + rnReadYn + ", rnDeleteYn=" + rnDeleteYn + ", name=" + name + ", job=" + job + "]";
	}
	
}
