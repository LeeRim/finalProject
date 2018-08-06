package com.jdl.css.approval.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.approval.model.dao.ApprovalDao;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Service
public class ApprovalService {

	@Autowired
	ApprovalDao dao;

	public List<ApprovalVo> selectDraftApprovalList(EmployeeVo e) {
		return dao.selectDraftApprovalList(e);
	}
	
}
