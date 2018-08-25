package com.jdl.css.company.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.company.model.dao.CompanyDao;
import com.jdl.css.company.model.vo.CompanyVo;

@Service
public class CompanyService {
	
	@Autowired
	CompanyDao dao;

	
	public CompanyVo selectCompanyInfo(int cKey) {
		return dao.selectCompanyInfo(cKey);
	}


	public int companyModify(CompanyVo company) {
		return dao.companyModify(company);
	}

}
