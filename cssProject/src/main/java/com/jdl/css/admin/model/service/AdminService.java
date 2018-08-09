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

	public List<CompanyVo> selectCompanySetList() {
		return dao.selectCompanySetList();
	}

	public int updateCompanyLevel(int cLevel, String cKey) {
		String[] keys = cKey.split(",");
		int result = 0;
		for(String key : keys){
			int intcKey = Integer.parseInt(key);
			CompanyVo company = new CompanyVo(intcKey, cLevel);
			result = dao.updateCompanyLevel(company);
		}
		return result;
	}

	public List<CompanyVo> selectMarkList() {
		return dao.selectMarkList();
	}


}
