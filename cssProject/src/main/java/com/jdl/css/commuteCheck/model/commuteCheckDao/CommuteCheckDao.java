package com.jdl.css.commuteCheck.model.commuteCheckDao;

import java.sql.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;

@Repository
public class CommuteCheckDao {
	
	@Autowired
	SqlSessionTemplate sqlsession;
	
	public List<CommuteCheckVo> showCommuteCheck(){
		return sqlsession.selectList("commuteCheckMapper.selectCommute");
	}
	public int insertInCommuteCheck(CommuteCheckVo commute) {
		return sqlsession.insert("commuteCheckMapper.insertInCommute",commute);
	}
	public int insertOutCommuteCheck(CommuteCheckVo commute) {
		return sqlsession.insert("commuteCheckMapper.insertOutCommute",commute);
	}
	public int insertInnsr(Date inTime) {
		return sqlsession.insert("commuteCheckMapper.insertInner", inTime);
	}
	public CommuteCheckVo selectInnsr(CommuteCheckVo commute) {
		return sqlsession.selectOne("commuteCheckMapper.selectOneCommute", commute);
	}
}
