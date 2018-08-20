package com.jdl.css.approval.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.approval.model.vo.ApprovalConditionVo;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.approval.model.vo.JobPropsalVo;
import com.jdl.css.approval.model.vo.VacationFormVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Repository
public class ApprovalDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertApproval(ApprovalVo app) {
		// TODO Auto-generated method stub
		return sqlSession.insert("ApprovalMapper.insertApproval", app);
	}

	public int insertApprovers(ApprovalConditionVo ac) {
		// TODO Auto-generated method stub
		return sqlSession.insert("ApprovalMapper.insertApprovers",ac);
	}

	public int insertJobPropsal(JobPropsalVo jobp) {
		// TODO Auto-generated method stub
		return sqlSession.insert("ApprovalMapper.insertJobpropsal", jobp);
	}
	
	public int insertVacation(VacationFormVo vForm) {
		return sqlSession.insert("ApprovalMapper.insertVacation",vForm);
	}
	
	public List<ApprovalVo> selectDraftApprovalAllList(int eKey) {
		return sqlSession.selectList("ApprovalMapper.selectDraftApprovalAllList", eKey);
	}

	public List<ApprovalVo> selectDraftApprovalIngList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectDraftApprovalIngList", eKey);
	}

	public List<ApprovalVo> selectDraftApprovalComplList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectDraftApprovalComplList", eKey);
	}
	
	public List<ApprovalVo> selectDraftApprovalCompaList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectDraftApprovalCompaList", eKey);
	}
	
	public List<ApprovalVo> selectReceivedApprovalAllList(int eKey) {
		return sqlSession.selectList("ApprovalMapper.selectReceivedApprovalAllList", eKey);
	}

	public List<ApprovalVo> selectReceivedApprovalIngList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectReceivedApprovalIngList", eKey);
	}

	public List<ApprovalVo> selectReceivedApprovalComplList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectReceivedApprovalComplList", eKey);
	}
	
	public List<ApprovalVo> selectReceivedApprovalCompaList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectReceivedApprovalCompaList", eKey);
	}

	public List<ApprovalVo> selectWaitingApprovalList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectWaitingApprovalList", eKey);
	}

	public List<ApprovalVo> selectExpectedApprovalList(int eKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectExpectedApprovalList", eKey);
	}

	public ApprovalVo selectApprovalDetail(ApprovalVo a) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ApprovalMapper.selectApprovalDetail", a);
	}

	public ApprovalConditionVo selectCurrentApprover(int aKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ApprovalMapper.selectCurrentApprover", aKey);
	}

	public ApprovalConditionVo selectLastApprover(int aKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ApprovalMapper.selectLastApprover", aKey);
	}

	public JobPropsalVo selectJobPropsal(int aKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ApprovalMapper.selectJobPropsal", aKey);
	}
	
	public VacationFormVo selectVacationForm(int aKey) {
		return sqlSession.selectOne("ApprovalMapper.selectVacationForm",aKey);
	}

	public int updateApprovalCondition(ApprovalConditionVo ac) {
		// TODO Auto-generated method stub
		return sqlSession.update("ApprovalMapper.updateApprovalCondition", ac);
	}

	public int updateApproval(ApprovalVo app) {
		// TODO Auto-generated method stub
		return sqlSession.update("ApprovalMapper.updateApproval", app);
	}

	public List<ApprovalConditionVo> selectIngAcList(int aKey) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("ApprovalMapper.selectIngAcList", aKey);
	}

	

	

}
