package com.jdl.css.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.admin.model.dao.AdminDao;
import com.jdl.css.company.model.vo.CompanyVo;



@Service
public class AdminService {
	
	@Autowired
	AdminDao dao;

	public List<CompanyVo> selectCompanyList() {
		return dao.selectCompanyList();
	}


}
