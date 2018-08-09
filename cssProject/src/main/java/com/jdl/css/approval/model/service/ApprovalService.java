package com.jdl.css.approval.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.approval.model.dao.ApprovalDao;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.approval.model.vo.JobPropsalVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Service
public class ApprovalService {

	@Autowired
	ApprovalDao dao;

	public List<ApprovalVo> selectDraftApprovalList(EmployeeVo e) {
		return dao.selectDraftApprovalList(e);
	}

	public int insertApproval(ApprovalVo app) {
		// TODO Auto-generated method stub
		return dao.insertApproval(app);
	}

	public int insertApprovers(int aKey, List<Integer> appStr) {
		int result=0;
		HashMap<String, Integer> params = new HashMap<String, Integer>();
		params.put("aKey", aKey);
		for(int i=0;i<appStr.size();i++){
			params.put("acApprovalFk", appStr.get(i));
			result+=dao.insertApprovers(params);
		}
		return result;
	}

	public int insertJobPropsal(JobPropsalVo jobp) {
		// TODO Auto-generated method stub
		return dao.insertJobPropsal(jobp);
	}

	
}
