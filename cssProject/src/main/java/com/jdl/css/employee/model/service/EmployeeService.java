package com.jdl.css.employee.model.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.employee.model.dao.EmployeeDao;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Service
public class EmployeeService {

	@Autowired
	EmployeeDao dao;

	public EmployeeVo selectEmployeeById(String eId) {
		return dao.selectEmployeeById(eId);
	}

	public int insertMember(EmployeeVo member) {
		return dao.insertMember(member);
	}

	public List<EmployeeVo> selectEmployeeList() {
		return dao.selectEmployeeList();
	}

	public List<EmployeeVo> selectJobList() {
		return dao.selectJobList();
	}

	public List<EmployeeVo> selectDepartList() {
		return dao.selectDepartList();
	}
}
