package com.jdl.css.note.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.note.model.dao.ReceivenoteDao;
import com.jdl.css.note.model.vo.NoteVo;
import com.jdl.css.note.model.vo.ReceivenoteVo;

@Service
public class ReceivenoteService {
	@Autowired
	ReceivenoteDao dao;

	public List<ReceivenoteVo> selectReceiveNote(int ekey) {
		return dao.selectReceiveNote(ekey);
	}

	public int updateReadYn(ReceivenoteVo receiveNote) {
		return dao.updateReadYn(receiveNote);
	}

	public NoteVo selectSendNoteDetail(ReceivenoteVo receiveNote) {
		return dao.selectSendNoteDetail(receiveNote);
	}

	public List<ReceivenoteVo> selectReceiveList(ReceivenoteVo receiveNote) {
		return dao.selectReceiveList(receiveNote);
	}

	public ReceivenoteVo selectReceiveNote(ReceivenoteVo receiveNote) {
		return dao.selectReceiveNoteDetail(receiveNote);
	}

	public int updateDeleteYn(ReceivenoteVo receiveNote) {
		int totalResult = 0;
			if(receiveNote.getRnKeies() !=null){
				for(Integer i : receiveNote.getRnKeies()){
					receiveNote.setRnKey(i);
					totalResult += dao.updateDeleteYn(receiveNote);
				}
			}else{
				totalResult =dao.updateDeleteYn(receiveNote);
			}
		return  totalResult;
	}

	public int updateReceiveNoteDel(ReceivenoteVo receiveNote) {
		int totalResult =0;
		  if(receiveNote.getRnKeies() !=null){
			  for(Integer i : receiveNote.getRnKeies()){
				  receiveNote.setRnKey(i);
				  totalResult += dao.updateReceiveNoteDel(receiveNote);
			  }
		  }else{
			   totalResult = dao.updateReceiveNoteDel(receiveNote);
		  }
		return totalResult ;
	}

	public List<ReceivenoteVo> selectSearchReceiveNote(ReceivenoteVo receiveNote) {
		return dao.selectSearchReceiveNote(receiveNote);
	}


}
