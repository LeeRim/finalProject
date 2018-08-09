package com.jdl.css.approval.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.approval.model.vo.JobPropsalVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Repository
public class ApprovalDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<ApprovalVo> selectDraftApprovalList(EmployeeVo e) {
		return sqlSession.selectList("ApprovalMapper.selectDraftApprovalList", 1);
	}

	public int insertApproval(ApprovalVo app) {
		// TODO Auto-generated method stub
		return sqlSession.insert("ApprovalMapper.insertApproval", app);
	}

	public int insertApprovers(HashMap<String, Integer> params) {
		// TODO Auto-generated method stub
		return sqlSession.insert("ApprovalMapper.insertApprovers",params);
	}

	public int insertJobPropsal(JobPropsalVo jobp) {
		// TODO Auto-generated method stub
		return sqlSession.insert("ApprovalMapper.insertJobpropsal", jobp);
	}
	
}
