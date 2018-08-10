package com.jdl.css.border.model.vo;

public class AttachVo {
	private int attachKey; //첨부파일
	private int attachLocation; // 첨부파일 위치
	private String attachFileName; //첨부파일 이름
	private String attachFilePath; //첨부파일 경로
	
	public AttachVo() {
		
	}

	public AttachVo(int attachKey, int attachLocation, String attachFileName, String attachFilePath) {
		this.attachKey = attachKey;
		this.attachLocation = attachLocation;
		this.attachFileName = attachFileName;
		this.attachFilePath = attachFilePath;
	}

	public int getAttachKey() {
		return attachKey;
	}

	public void setAttachKey(int attachKey) {
		this.attachKey = attachKey;
	}

	public int getAttachLocation() {
		return attachLocation;
	}

	public void setAttachLocation(int attachLocation) {
		this.attachLocation = attachLocation;
	}

	public String getAttachFileName() {
		return attachFileName;
	}

	public void setAttachFileName(String attachFileName) {
		this.attachFileName = attachFileName;
	}

	public String getAttachFilePath() {
		return attachFilePath;
	}

	public void setAttachFilePath(String attachFilePath) {
		this.attachFilePath = attachFilePath;
	}

	@Override
	public String toString() {
		return "AttachVo [attachKey=" + attachKey + ", attachLocation=" + attachLocation + ", attachFileName="
				+ attachFileName + ", attachFilePath=" + attachFilePath + "]";
	}
	
	
}
