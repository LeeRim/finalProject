package com.jdl.css.common.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.common.model.dao.AttachmentDao;
import com.jdl.css.common.model.vo.AttachmentVo;

@Service
public class AttachmentService {
	
	@Autowired
	AttachmentDao dao;

	public int insertAttachments(List<AttachmentVo> attachList) {
		int result= 0;
		for(AttachmentVo av : attachList){
			result += dao.insertAttachments(av);
		}
		return result;
	}

}
