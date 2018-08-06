package com.jdl.css.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.company.model.vo.CompanyVo;




@Repository
public class AdminDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<CompanyVo> selectCompanyList() {
		return sqlSession.selectList("AdminMapper.selectCompanyList");
	}

	

}
