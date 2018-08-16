package com.jdl.css.approval.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.approval.model.dao.ApprovalDao;
import com.jdl.css.approval.model.vo.ApprovalConditionVo;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.approval.model.vo.JobPropsalVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Service
public class ApprovalService {

	@Autowired
	ApprovalDao dao;

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
	
	public List<ApprovalVo> selectDraftApprovalAllList(int eKey) {
		return dao.selectDraftApprovalAllList(eKey);
	}

	public List<ApprovalVo> selectDraftApprovalIngList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectDraftApprovalIngList(eKey);
	}

	public List<ApprovalVo> selectDraftApprovalComplList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectDraftApprovalComplList(eKey);
	}

	public List<ApprovalVo> selectDraftApprovalCompaList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectDraftApprovalCompaList(eKey);
	}
	
	public List<ApprovalVo> selectReceivedApprovalAllList(int eKey) {
		return dao.selectReceivedApprovalAllList(eKey);
	}

	public List<ApprovalVo> selectReceivedApprovalIngList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectReceivedApprovalIngList(eKey);
	}

	public List<ApprovalVo> selectReceivedApprovalComplList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectReceivedApprovalComplList(eKey);
	}

	public List<ApprovalVo> selectReceivedApprovalCompaList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectReceivedApprovalCompaList(eKey);
	}

	public List<ApprovalVo> selectWaitingApprovalList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectWaitingApprovalList(eKey);
	}

	public List<ApprovalVo> selectExpectedApprovalList(int eKey) {
		// TODO Auto-generated method stub
		return dao.selectExpectedApprovalList(eKey);
	}

	public ApprovalVo selectApprovalDetail(ApprovalVo a) {
		// TODO Auto-generated method stub
		return dao.selectApprovalDetail(a);
	}

	public ApprovalConditionVo selectCurrentApprover(int aKey) {
		// TODO Auto-generated method stub
		return dao.selectCurrentApprover(aKey);
	}

	public ApprovalConditionVo selectLastApprover(int aKey) {
		// TODO Auto-generated method stub
		return dao.selectLastApprover(aKey);
	}

	public JobPropsalVo selectJobPropsal(int aKey) {
		// TODO Auto-generated method stub
		return dao.selectJobPropsal(aKey);
	}

	public int updateApprovalCondition(ApprovalConditionVo ac) {
		// TODO Auto-generated method stub
		return dao.updateApprovalCondition(ac);
	}

	public int updateApproval(ApprovalVo app) {
		// TODO Auto-generated method stub
		return dao.updateApproval(app);
	}

	public List<ApprovalConditionVo> selectIngAcList(int aKey) {
		// TODO Auto-generated method stub
		return dao.selectIngAcList(aKey);
	}

}
