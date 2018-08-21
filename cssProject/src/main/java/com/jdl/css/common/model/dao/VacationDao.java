package com.jdl.css.common.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.VacationVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Repository
public class VacationDao {
	@Autowired
	SqlSessionTemplate session;
	
	public VacationVo selectTotalVacation(EmployeeVo user) {
		return session.selectOne("vacationMapper.selectTotalVacation", user);
	}

	public List<VacationVo> selectUsedVacation(EmployeeVo user) {
		return session.selectList("vacationMapper.selectUsedVacation", user);
	}

}
