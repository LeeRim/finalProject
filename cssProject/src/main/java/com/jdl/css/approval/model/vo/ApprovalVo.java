package com.jdl.css.approval.model.vo;

import java.util.List;

import org.springframework.stereotype.Component;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Component
public class ApprovalVo {

	private int aKey;
	private int cKeyFk;
	private int divDoctypeFk;
	private String aTitle;
	private String aContent;
	private int aWriterFk;
	private String aWriteDate;
	private int aCondition;
	private List<ApprovalConditionVo> aConList;
	private List<AttachmentVo> aAttachList;
	
	private String doctype;
	private EmployeeVo writer;
	
	private JobPropsalVo jp;
	private OrderFormVo of;
	private SpendingResolutionVo sr;
	private VacationFormVo vf;
	
	public ApprovalVo() {
		// TODO Auto-generated constructor stub
	}

	
	public ApprovalVo(int aKey, int cKeyFk, int divDoctypeFk, String aTitle, String aContent, int aWriterFk,
			String aWriteDate, int aCondition, List<ApprovalConditionVo> aConList, List<AttachmentVo> aAttachList,
			String doctype, EmployeeVo writer, JobPropsalVo jp, OrderFormVo of, SpendingResolutionVo sr,
			VacationFormVo vf) {
		this.aKey = aKey;
		this.cKeyFk = cKeyFk;
		this.divDoctypeFk = divDoctypeFk;
		this.aTitle = aTitle;
		this.aContent = aContent;
		this.aWriterFk = aWriterFk;
		this.aWriteDate = aWriteDate;
		this.aCondition = aCondition;
		this.aConList = aConList;
		this.aAttachList = aAttachList;
		this.doctype = doctype;
		this.writer = writer;
		this.jp = jp;
		this.of = of;
		this.sr = sr;
		this.vf = vf;
	}


	public int getaKey() {
		return aKey;
	}

	public void setaKey(int aKey) {
		this.aKey = aKey;
	}

	public int getcKeyFk() {
		return cKeyFk;
	}

	public void setcKeyFk(int cKeyFk) {
		this.cKeyFk = cKeyFk;
	}

	public int getDivDoctypeFk() {
		return divDoctypeFk;
	}

	public void setDivDoctypeFk(int divDoctypeFk) {
		this.divDoctypeFk = divDoctypeFk;
	}

	public String getaTitle() {
		return aTitle;
	}

	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public int getaWriterFk() {
		return aWriterFk;
	}

	public void setaWriterFk(int aWriterFk) {
		this.aWriterFk = aWriterFk;
	}

	public String getaWriteDate() {
		return aWriteDate;
	}

	public void setaWriteDate(String aWriteDate) {
		this.aWriteDate = aWriteDate;
	}

	public int getaCondition() {
		return aCondition;
	}

	public void setaCondition(int aCondition) {
		this.aCondition = aCondition;
	}

	public List<ApprovalConditionVo> getaConList() {
		return aConList;
	}

	public void setaConList(List<ApprovalConditionVo> aConList) {
		this.aConList = aConList;
	}

	public List<AttachmentVo> getaAttachList() {
		return aAttachList;
	}

	public void setaAttachList(List<AttachmentVo> aAttachList) {
		this.aAttachList = aAttachList;
	}

	public String getDoctype() {
		return doctype;
	}

	public void setDoctype(String doctype) {
		this.doctype = doctype;
	}

	public EmployeeVo getWriter() {
		return writer;
	}

	public void setWriter(EmployeeVo writer) {
		this.writer = writer;
	}
	
	

	public JobPropsalVo getJp() {
		return jp;
	}


	public void setJp(JobPropsalVo jp) {
		this.jp = jp;
	}


	public OrderFormVo getOf() {
		return of;
	}


	public void setOf(OrderFormVo of) {
		this.of = of;
	}


	public SpendingResolutionVo getSr() {
		return sr;
	}


	public void setSr(SpendingResolutionVo sr) {
		this.sr = sr;
	}


	public VacationFormVo getVf() {
		return vf;
	}


	public void setVf(VacationFormVo vf) {
		this.vf = vf;
	}


	@Override
	public String toString() {
		return "ApprovalVo [aKey=" + aKey + ", cKeyFk=" + cKeyFk + ", divDoctypeFk=" + divDoctypeFk + ", aTitle="
				+ aTitle + ", aContent=" + aContent + ", aWriterFk=" + aWriterFk + ", aWriteDate=" + aWriteDate
				+ ", aCondition=" + aCondition + ", aConList=" + aConList + ", aAttachList=" + aAttachList
				+ ", doctype=" + doctype + ", writer=" + writer + ", jp=" + jp + ", of=" + of + ", sr=" + sr + ", vf="
				+ vf + "]";
	}


}
