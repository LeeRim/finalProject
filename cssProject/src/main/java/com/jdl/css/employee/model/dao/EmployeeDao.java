package com.jdl.css.employee.model.dao;

import java.util.List;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

	public List<EmployeeVo> selectEmployeeList() {
		return sqlSession.selectList("EmployeeMapper.selectEmployeeList");
	}

	public List<EmployeeVo> selectJobList() {
		return sqlSession.selectList("EmployeeMapper.selectJobList");
	}

	public List<EmployeeVo> selectDepartList() {
		return sqlSession.selectList("EmployeeMapper.selectDepartList");
	}

}
