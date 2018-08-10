package com.jdl.css.common.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.AttachmentVo;

@Repository
public class AttachmentDao {

	@Autowired
	SqlSessionTemplate session;

	public int insertAttachments(AttachmentVo av) {
		// TODO Auto-generated method stub
		return session.insert("AttachmentMapper.insertAttachment",av);
	}
}
