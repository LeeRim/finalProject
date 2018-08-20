package com.jdl.css.givevacation.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GivevacationDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	
}
