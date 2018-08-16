package com.jdl.css.common.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.AttachmentVo;

@Repository
public class AttachmentDao {

	@Autowired
	SqlSessionTemplate session;

	public int insertAttachments(AttachmentVo av) {
		return session.insert("AttachmentMapper.insertAttachment",av);
	}

	public List<AttachmentVo> selectAttachment() {
		return session.selectList("AttachmentMapper.selectAttachment");
	}

	public AttachmentVo selectAttachmentDetail(AttachmentVo av) {
		return session.selectOne("AttachmentMapper.selectAttachmentDetail", av);
	}

	public int deleteAttachGallery(AttachmentVo av) {
		return session.delete("AttachmentMapper.deleteAttachment", av);
	}

	public int updateAttachmentGallery(AttachmentVo av) {
		return session.update("AttachmentMapper.updateAttachment", av);
	}

	public AttachmentVo selectAttachmentone(int attaKey) {
		return session.selectOne("AttachmentMapper.selectAttach", attaKey);
	}
}
