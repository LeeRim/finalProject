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
}
