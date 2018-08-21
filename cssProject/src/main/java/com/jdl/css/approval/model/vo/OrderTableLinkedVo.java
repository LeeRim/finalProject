package com.jdl.css.approval.model.vo;

import org.springframework.stereotype.Component;

@Component
public class OrderTableLinkedVo {
	private int olKey;
	private int aKeyFk;
	private int olCulno;
	private String olProduct;
	private String olSize;
	private String olUnion;
	private int olProductcount;
	private int olOrizinprice;
	private int olPrice;
	private String olEtc;
	
	public OrderTableLinkedVo() {
		// TODO Auto-generated constructor stub
	}

	public OrderTableLinkedVo(int aKeyFk, int olCulno, String olProduct, String olSize, String olUnion,
			int olProductcount, int olOrizinprice, int olPrice, String olEtc) {
		this.aKeyFk = aKeyFk;
		this.olCulno = olCulno;
		this.olProduct = olProduct;
		this.olSize = olSize;
		this.olUnion = olUnion;
		this.olProductcount = olProductcount;
		this.olOrizinprice = olOrizinprice;
		this.olPrice = olPrice;
		this.olEtc = olEtc;
	}
	
	public OrderTableLinkedVo(int olKey, int aKeyFk, int olCulno, String olProduct, String olSize, String olUnion,
			int olProductcount, int olOrizinprice, int olPrice, String olEtc) {
		this.olKey = olKey;
		this.aKeyFk = aKeyFk;
		this.olCulno = olCulno;
		this.olProduct = olProduct;
		this.olSize = olSize;
		this.olUnion = olUnion;
		this.olProductcount = olProductcount;
		this.olOrizinprice = olOrizinprice;
		this.olPrice = olPrice;
		this.olEtc = olEtc;
	}

	public int getOlKey() {
		return olKey;
	}

	public void setOlKey(int olKey) {
		this.olKey = olKey;
	}

	public int getaKeyFk() {
		return aKeyFk;
	}

	public void setaKeyFk(int aKeyFk) {
		this.aKeyFk = aKeyFk;
	}

	public int getOlCulno() {
		return olCulno;
	}

	public void setOlCulno(int olCulno) {
		this.olCulno = olCulno;
	}

	public String getOlProduct() {
		return olProduct;
	}

	public void setOlProduct(String olProduct) {
		this.olProduct = olProduct;
	}

	public String getOlSize() {
		return olSize;
	}

	public void setOlSize(String olSize) {
		this.olSize = olSize;
	}

	public String getOlUnion() {
		return olUnion;
	}

	public void setOlUnion(String olUnion) {
		this.olUnion = olUnion;
	}

	public int getOlProductcount() {
		return olProductcount;
	}

	public void setOlProductcount(int olProductcount) {
		this.olProductcount = olProductcount;
	}

	public int getOlOrizinprice() {
		return olOrizinprice;
	}

	public void setOlOrizinprice(int olOrizinprice) {
		this.olOrizinprice = olOrizinprice;
	}

	public int getOlPrice() {
		return olPrice;
	}

	public void setOlPrice(int olPrice) {
		this.olPrice = olPrice;
	}

	public String getOlEtc() {
		return olEtc;
	}

	public void setOlEtc(String olEtc) {
		this.olEtc = olEtc;
	}

	@Override
	public String toString() {
		return "OrderTableLinkedVo [olKey=" + olKey + ", aKeyFk=" + aKeyFk + ", olCulno=" + olCulno + ", olProduct="
				+ olProduct + ", olSize=" + olSize + ", olUnion=" + olUnion + ", olProductcount=" + olProductcount
				+ ", olOrizinprice=" + olOrizinprice + ", olPrice=" + olPrice + ", olEtc=" + olEtc + "]";
	}
	
	
}
