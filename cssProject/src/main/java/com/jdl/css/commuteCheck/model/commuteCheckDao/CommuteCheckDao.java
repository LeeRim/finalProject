package com.jdl.css.commuteCheck.model.commuteCheckDao;

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
}
