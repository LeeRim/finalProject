package com.jdl.css.calender.model.dao;

import java.util.*;
import javax.websocket.Session;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.calender.model.vo.CalenderVo;

@Repository
public class CalenderDao {
	
	@Autowired
	SqlSessionTemplate sqlsession;
	

	public List<CalenderVo> showCalender() {
		return sqlsession.selectList("CalenderMapper.selectCalender");
	}
	
	public int insertCalender(CalenderVo calender) {
		return sqlsession.insert("CalenderMapper.createEvent", calender);
	}
	
}
