package com.jdl.css.QNA.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.QNA.model.dao.QDao;
import com.jdl.css.QNA.model.vo.QNAVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Service
public class Qservice {

	@Autowired
	QDao dao;

	public int insertQNA(QNAVo qv) {
		return dao.insertQNA(qv);
	}

	public int updateQNA(QNAVo qv) {
		return dao.updateQNA(qv);
	}

	public List<QNAVo> selectQNA(EmployeeVo employee) {
		return dao.selectQNA(employee);
	}

	public QNAVo selectone(int qKey) {
		return dao.selectone(qKey);
	}

	public List<QNAVo> selectAll() {
		return dao.selectAll();
	}

	/*public QNAVo selectOneQNA() {
		return dao.selectOneQNA();
	}*/
	
}
