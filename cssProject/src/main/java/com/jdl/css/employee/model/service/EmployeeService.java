package com.jdl.css.employee.model.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.common.model.vo.AttachmentVo;
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

	public List<EmployeeVo> selectEmployeeList(int cKey) {
		return dao.selectEmployeeList(cKey);
	}

	public List<EmployeeVo> selectJobList(int cKey) {
		return dao.selectJobList(cKey);
	}

	public List<EmployeeVo> selectDepartList(int cKey) {
		return dao.selectDepartList(cKey);
	}


	public List<EmployeeVo> selectEmployeeListByKeyStr(int[] appKeyArr) {
		return dao.selectEmployeeListByKeyStr(appKeyArr);
	}
	public EmployeeVo selectEmployeeInfo(int eKey) {
		return dao.selectEmployeeInfo(eKey);

	}


	public int updateInstead(EmployeeVo user) {
		// TODO Auto-generated method stub
		return dao.updateInstead(user);
	}
	public int stateUpdate(EmployeeVo employee) {
		return dao.stateUpdate(employee);
	}

	public int updateEmployee(EmployeeVo member) {
		return dao.updateEmployee(member);
	}

	public int empIdCheck(EmployeeVo chekEmployee) {
		return dao.empIdCheck(chekEmployee);

	}

}
