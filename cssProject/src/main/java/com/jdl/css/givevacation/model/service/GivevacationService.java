package com.jdl.css.givevacation.model.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.givevacation.model.dao.GivevacationDao;
import com.jdl.css.givevacation.model.vo.GivevacationVo;


@Service
public class GivevacationService {

	@Autowired
	GivevacationDao dao;

	public int insertGive(List<GivevacationVo> list) {
		int result = 0 ;
		for(int i=0; i<list.size(); i++){
			result += dao.insertGive(list.get(i));
		}
		return result;
	}

	public List<GivevacationVo> selectGive(int getcKeyFk) {
		return dao.selectGive(getcKeyFk);
	}
}
