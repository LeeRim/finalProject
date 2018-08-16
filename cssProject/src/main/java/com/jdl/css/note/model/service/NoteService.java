package com.jdl.css.note.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.note.model.dao.NoteDao;
import com.jdl.css.note.model.vo.NoteVo;
import com.jdl.css.note.model.vo.ReceivenoteVo;


@Service
public class NoteService {
	@Autowired
	NoteDao dao;

	public int insertNote(NoteVo note) {
		return dao.insertNote(note);
	}

	public int insertReceiveNote(NoteVo note) {
		int result = 0;
		for(Integer i : note.getReceiveNo()){
			note.setReceiver(i);
			result += dao.insertReceiveNote(note);			
		}
		return result;
	}

	public List<EmployeeVo> selectEmployee(int companyK) {
		return dao.selectEmployee(companyK);
	}

	public List<EmployeeVo> selectDepartment(int companyK) {
		return dao.selectDepartment(companyK);
	}

	public int insertAttach(NoteVo note) {
		int result= 0;
		for(AttachmentVo av : note.getAttach()){
			result += dao.insertAttach(av);
		}
		return result;
	}

	public List<NoteVo> selectSendNoteList(int ekey) {
		return dao.selectSendNoteList(ekey);
	}

	public NoteVo selectSendNoteDetail(NoteVo note) {
		return dao.selectSendNoteDetail(note);
	}

	public List<ReceivenoteVo> selectReceiveList(NoteVo note) {
		return dao.selectReceiveList(note);
	}

	public int updateDelYn(NoteVo note) {
		int result =0;
		if(note.getSnKeies() !=null){
			for(Integer i : note.getSnKeies()){
				note.setSnKey(i);
				result += dao.updateDelYn(note);
			}
		}else{
			result = dao.updateDelYn(note);
		}
		
		return result;
	}

	public int updateTrashDelSendNote(NoteVo note) {
		int result = 0;
		if(note.getSnKeies() != null){
			for(Integer i : note.getSnKeies()){
				note.setSnKey(i);
				result += dao.updateTrashDelSendNote(note);
			}
		}else{
			result = dao.updateTrashDelSendNote(note);
		}
		return result;
	}

	public List<NoteVo> selectSearchSendNote(NoteVo note) {
		return dao.selectSearchSendNote(note);
	}



}
