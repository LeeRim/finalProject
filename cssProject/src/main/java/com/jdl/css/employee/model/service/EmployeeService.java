package com.jdl.css.employee.model.service;

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
}
