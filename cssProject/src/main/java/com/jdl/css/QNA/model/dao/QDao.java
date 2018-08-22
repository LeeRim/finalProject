package com.jdl.css.QNA.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.QNA.model.vo.QNAVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Repository
public class QDao {

	@Autowired
	SqlSessionTemplate session;

	public int insertQNA(QNAVo qv) {
		return session.insert("QNAMapper.insertQNA", qv);
	}

	public int updateQNA(QNAVo qv) {
		return session.update("QNAMapper.updateQNA", qv);
	}

	public List<QNAVo> selectQNA(EmployeeVo employee) {
		return session.selectList("QNAMapper.selectQNA", employee);
	}

	public QNAVo selectone(int qKey) {
		return session.selectOne("QNAMapper.selectOneQNA", qKey);
	}

	/*public QNAVo selectOneQNA() {
		return session.selectOne("QNAMapper.selectOneQna");
	}*/

}
