package com.jdl.css.commuteCheck.model.commuteCheckDao;

import java.sql.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Repository
public class CommuteCheckDao {
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	public List<CommuteCheckVo> showCommuteCheck(EmployeeVo user){
		return sqlsession.selectList("commuteCheckMapper.selectCommute",user);
	}
	public int insertInCommuteCheck(CommuteCheckVo commute) {
		return sqlsession.insert("commuteCheckMapper.insertInCommute",commute);
	}
	public int insertOutCommuteCheck(EmployeeVo user) {
		return sqlsession.insert("commuteCheckMapper.insertOutCommute",user);
	}
	public int insertInnsr(EmployeeVo user) {
		return sqlsession.insert("commuteCheckMapper.insertInner", user);
	}
	public CommuteCheckVo selectInnsr(CommuteCheckVo commute) {
		return sqlsession.selectOne("commuteCheckMapper.selectOneCommute", commute);
	}
	public List<CommuteCheckVo> showCommuteAllCheck(EmployeeVo user) {
		return sqlsession.selectList("commuteCheckMapper.selectAllCommute",user);
	}
}
