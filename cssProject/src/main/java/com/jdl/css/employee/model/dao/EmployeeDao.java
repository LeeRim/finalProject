package com.jdl.css.employee.model.dao;

import java.util.List;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.common.model.vo.DivisionVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Repository
public class EmployeeDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	public EmployeeVo selectEmployeeById(String eId) {
		return sqlSession.selectOne("EmployeeMapper.selectEmployeeById", eId);
	}

	public int insertMember(EmployeeVo member) {
		
		return sqlSession.insert("EmployeeMapper.insertEmployee",member);
	}

	public List<EmployeeVo> selectEmployeeList(int cKey) {
		return sqlSession.selectList("EmployeeMapper.selectEmployeeList2",cKey);
	}

	public List<EmployeeVo> selectJobList(int cKey) {
		return sqlSession.selectList("EmployeeMapper.selectJobList",cKey);
	}

	public List<EmployeeVo> selectDepartList(int cKey) {
		return sqlSession.selectList("EmployeeMapper.selectDepartList",cKey);
	}

	public List<EmployeeVo> selectEmployeeListByKeyStr(int[] appKeyArr) {
		return sqlSession.selectList("EmployeeMapper.selectEmployeeListByKey", appKeyArr);
	}
	public EmployeeVo selectEmployeeInfo(int eKey) {
		return sqlSession.selectOne("EmployeeMapper.selectEmployeeInfo", eKey);

	}


	public int updateInstead(EmployeeVo user) {
		// TODO Auto-generated method stub
		return sqlSession.update("EmployeeMapper.updateInstead", user);
	}
	
	public int stateUpdate(EmployeeVo employee) {
		return sqlSession.update("EmployeeMapper.updateState", employee);
	}

	public int updateEmployee(EmployeeVo member) {
		return sqlSession.update("EmployeeMapper.updateEmployee", member);
	}

	public int empIdCheck(EmployeeVo chekEmployee) {
		
		return sqlSession.selectOne("EmployeeMapper.empAddIdCheck", chekEmployee);
	}

	public int empNoCheck(EmployeeVo chekEmployee) {
		return sqlSession.selectOne("EmployeeMapper.empNoCheck", chekEmployee);
	}

	
	public EmployeeVo selectSessionEmployee(EmployeeVo member) {
		return sqlSession.selectOne("EmployeeMapper.sessionSelect", member);
	}
	public List<EmployeeVo> selectTodayBList(int cKey) {
		return sqlSession.selectList("EmployeeMapper.selectTodayBList",cKey);
	}

	public List<EmployeeVo> selectDepartCountList(int cKey) {
		return sqlSession.selectList("EmployeeMapper.selectDepartCountList",cKey);
	}

	public int deleteDivision(int divKey) {
		return sqlSession.delete("EmployeeMapper.deleteDivision", divKey);

	}
	
	public EmployeeVo selectEmail(String email) {
		return sqlSession.selectOne("EmployeeMapper.selectEmail", email);
	}

	public int updatePwd(String pwd) {
		return sqlSession.update("EmployeeMapper.updatePwd", pwd);
	}

	public int updatePwd(EmployeeVo user2) {
	 
		return sqlSession.update("EmployeeMapper.updatePwd", user2);
		
	}

	public int insertDepartment(DivisionVo division) {
		// TODO Auto-generated method stub
		return sqlSession.insert("EmployeeMapper.insertDepartment", division);
	}

	public int insertJob(DivisionVo division) {
		// TODO Auto-generated method stub
		return sqlSession.insert("EmployeeMapper.insertJob", division);
	}

	public int insertDivision(DivisionVo division) {
		// TODO Auto-generated method stub
		return sqlSession.insert("EmployeeMapper.insertDivision", division);
	}


	public int selectEmployeeTotal(int cKey) {
		return sqlSession.selectOne("EmployeeMapper.selectEmployeeTotal", cKey);
	}
	
	public int employeeDelete(int eKey) {
		return sqlSession.delete("EmployeeMapper.employeeDelete", eKey);

	}


}
