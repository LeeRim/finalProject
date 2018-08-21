package com.jdl.css.givevacation.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.givevacation.model.vo.GivevacationVo;

@Repository
public class GivevacationDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertGive(GivevacationVo giv) {
		return sqlSession.insert("GiveMapper.Giveinsert", giv);
	}

	public List<GivevacationVo> selectGive(int getcKeyFk) {
		return sqlSession.selectList("GiveMapper.GiveSelect", getcKeyFk);
	}
	
	
}
