package com.jdl.css.company.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.company.model.vo.CompanyVo;


@Repository
public class CompanyDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public CompanyVo selectCompanyInfo(int cKey) {
		return sqlSession.selectOne("companyMapper.selectCompanyInfo",cKey);
	}

	public int companyModify(CompanyVo company) {
		return sqlSession.update("companyMapper.companyModify", company);
	}

}
