package com.jdl.css.approval.model.vo;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class OrderFormVo {
	private int oKey;
	private int aKeyFk;
	private String oDepartment;
	private String oLimit;
	private String oNo;
	private String oDate;
	private String oPayment;
	private String oStartdate;
	private String oEnddate;
	private String oPayend;
	private String oPurpose;
	
	private List<OrderTableLinkedVo> linkedList;
	
	public OrderFormVo() {
		// TODO Auto-generated constructor stub
	}

	public OrderFormVo(int oKey, int aKeyFk, String oDepartment, String oLimit, String oNo, String oDate,
			String oPayment, String oStartdate, String oEnddate, String oPayend, String oPurpose,
			List<OrderTableLinkedVo> linkedList) {
		this.oKey = oKey;
		this.aKeyFk = aKeyFk;
		this.oDepartment = oDepartment;
		this.oLimit = oLimit;
		this.oNo = oNo;
		this.oDate = oDate;
		this.oPayment = oPayment;
		this.oStartdate = oStartdate;
		this.oEnddate = oEnddate;
		this.oPayend = oPayend;
		this.oPurpose = oPurpose;
		this.linkedList = linkedList;
	}

	public int getoKey() {
		return oKey;
	}

	public void setoKey(int oKey) {
		this.oKey = oKey;
	}

	public int getaKeyFk() {
		return aKeyFk;
	}

	public void setaKeyFk(int aKeyFk) {
		this.aKeyFk = aKeyFk;
	}

	public String getoDepartment() {
		return oDepartment;
	}

	public void setoDepartment(String oDepartment) {
		this.oDepartment = oDepartment;
	}

	public String getoLimit() {
		return oLimit;
	}

	public void setoLimit(String oLimit) {
		this.oLimit = oLimit;
	}

	public String getoNo() {
		return oNo;
	}

	public void setoNo(String oNo) {
		this.oNo = oNo;
	}

	public String getoDate() {
		return oDate;
	}

	public void setoDate(String oDate) {
		this.oDate = oDate;
	}

	public String getoPayment() {
		return oPayment;
	}

	public void setoPayment(String oPayment) {
		this.oPayment = oPayment;
	}

	public String getoStartdate() {
		return oStartdate;
	}

	public void setoStartdate(String oStartdate) {
		this.oStartdate = oStartdate;
	}

	public String getoEnddate() {
		return oEnddate;
	}

	public void setoEnddate(String oEnddate) {
		this.oEnddate = oEnddate;
	}

	public String getoPayend() {
		return oPayend;
	}

	public void setoPayend(String oPayend) {
		this.oPayend = oPayend;
	}

	public String getoPurpose() {
		return oPurpose;
	}

	public void setoPurpose(String oPurpose) {
		this.oPurpose = oPurpose;
	}

	public List<OrderTableLinkedVo> getLinkedList() {
		return linkedList;
	}

	public void setLinkedList(List<OrderTableLinkedVo> linkedList) {
		this.linkedList = linkedList;
	}

	@Override
	public String toString() {
		return "OrderFormVo [oKey=" + oKey + ", aKeyFk=" + aKeyFk + ", oDepartment=" + oDepartment + ", oLimit="
				+ oLimit + ", oNo=" + oNo + ", oDate=" + oDate + ", oPayment=" + oPayment + ", oStartdate=" + oStartdate
				+ ", oEnddate=" + oEnddate + ", oPayend=" + oPayend + ", oPurpose=" + oPurpose + ", linkedList="
				+ linkedList + "]";
	}
	
	
}
