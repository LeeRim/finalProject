package com.jdl.css.common.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.common.model.dao.VacationDao;
import com.jdl.css.common.model.vo.VacationVo;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.givevacation.model.vo.GivevacationVo;

@Service
public class VacationService {
	
	@Autowired
	VacationDao dao;
	
	public GivevacationVo selectTotalVacation(EmployeeVo user) {
		return dao.selectTotalVacation(user);
	}

	public List<VacationVo> selectUsedVacation(EmployeeVo user) {
		return dao.selectUsedVacation(user);
	}

}
