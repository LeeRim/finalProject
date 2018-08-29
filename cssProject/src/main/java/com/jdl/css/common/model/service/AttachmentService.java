package com.jdl.css.common.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.border.model.vo.BorderVo;
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


	public int deleteGallery(AttachmentVo av) {
		return dao.deleteAttachGallery(av);
	}

	public int updateGallery(AttachmentVo av) {
		return dao.updateAttachmentGallery(av);
	}

	public AttachmentVo selectAttachone(int attaKey) {
		return dao.selectAttachmentone(attaKey);
	}

	public List<AttachmentVo> selectAttachSev() {
		return dao.selectAttachmentSev();
	}

	public AttachmentVo qnaAttach(int qKey) {
		return dao.selectQnaAttach(qKey);
	}

	public AttachmentVo selectAttachDetail(AttachmentVo av) {
		return dao.selectAttachmentDetail(av);
	}

	public AttachmentVo selectAttachDetail2(BorderVo board) {
		return dao.selectAttachmentDetail2(board);
	}


}
