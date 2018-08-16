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

	public List<AttachmentVo> selectAttach() {
		return dao.selectAttachment();
	}

	public AttachmentVo selectAttachDetail(AttachmentVo av) {
		return dao.selectAttachmentDetail(av);
	}

	public int deleteGallery(AttachmentVo av) {
		return dao.deleteAttachGallery(av);
	}

	public int updateGallery(AttachmentVo av) {
		return dao.updateAttachmentGallery(av);
	}

	public AttachmentVo selectAttachone(int attaKey) {
		return dao.selectAttachmentone(attaKey);
	}

}
