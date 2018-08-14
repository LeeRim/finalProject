package com.jdl.css.admin.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.admin.model.dao.AdminDao;
import com.jdl.css.company.model.vo.CompanyVo;
import com.jdl.css.employee.model.vo.EmployeeVo;



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

	public int selectAllCompanyCount() {
		return dao.selectAllCompanyCount();
	}
	
	public int selectCountLevel1(){
		return dao.selectCountLevel1();
	}
	
	public int selectCountLevel2(){
		return dao.selectCountLevel2();
	}
	
	public int selectCountLevel3(){
		return dao.selectCountLevel3();
	}

	public List<CompanyVo> selectTop5CompanyList() {
		return dao.selectTop5CompanyList();
	}

	public List<CompanyVo> selectCalList(String dateList) {
		return dao.selectCalList(dateList);
	}
	
	public List<CompanyVo> selectNowCalList(){
		return dao.selectNowCalList();
	}

	public EmployeeVo companyIdCheck(String id) {
		return dao.companyIdCheck(id);
	}

	public int insertCompany(CompanyVo company) {
		return dao.insertCompany(company);
	}

	public int insertEmployeeAdmin(EmployeeVo employee) {
		return dao.insertEmployeeAdmin(employee);
	}



}
