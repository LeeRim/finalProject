package com.jdl.css.common.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.VacationVo;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.givevacation.model.vo.GivevacationVo;

@Repository
public class VacationDao {
	@Autowired
	SqlSessionTemplate session;
	
	public GivevacationVo selectTotalVacation(EmployeeVo user) {
		return session.selectOne("vacationMapper.selectTotalVacation", user);
	}

	public List<VacationVo> selectUsedVacation(EmployeeVo user) {
		return session.selectList("vacationMapper.selectUsedVacation", user);
	}

	public int insertVacation(VacationVo v) {
		return session.insert("vacationMapper.insertVacation", v);
	}

	public VacationVo selectWorkYear(EmployeeVo user) {
		return session.selectOne("vacationMapper.selectWorkYear", user);
	}

}
