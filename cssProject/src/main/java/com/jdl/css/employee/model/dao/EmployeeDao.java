package com.jdl.css.employee.model.dao;

import java.util.List;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.AttachmentVo;
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


}
