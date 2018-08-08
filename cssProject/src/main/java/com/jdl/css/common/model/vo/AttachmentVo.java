package com.jdl.css.common.model.vo;

public class AttachmentVo {
	
	private int attaKey;
	private int attaLocation;
	private String attaFileName;
	private String attaFilePath;
	
	
	public AttachmentVo() {
	}


	public int getAttaKey() {
		return attaKey;
	}


	public void setAttaKey(int attaKey) {
		this.attaKey = attaKey;
	}


	public int getAttaLocation() {
		return attaLocation;
	}


	public void setAttaLocation(int attaLocation) {
		this.attaLocation = attaLocation;
	}


	public String getAttaFileName() {
		return attaFileName;
	}


	public void setAttaFileName(String attaFileName) {
		this.attaFileName = attaFileName;
	}


	public String getAttaFilePath() {
		return attaFilePath;
	}


	public void setAttaFilePath(String attaFilePath) {
		this.attaFilePath = attaFilePath;
	}


	@Override
	public String toString() {
		return "AttachmentVo [attaKey=" + attaKey + ", attaLocation=" + attaLocation + ", attaFileName=" + attaFileName
				+ ", attaFilePath=" + attaFilePath + "]";
	}
	
	
}
