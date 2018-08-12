package com.jdl.css.note.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.note.model.vo.NoteVo;
import com.jdl.css.note.model.vo.ReceivenoteVo;


@Repository
public class NoteDao {
	@Autowired
	SqlSessionTemplate session;

	public int insertNote(NoteVo note) {
		return session.insert("NoteMapper.insertNote", note);
	}

	public int insertReceiveNote(NoteVo note) {
		return session.insert("NoteMapper.insertReceiveNote",note);
	}

	public List<EmployeeVo> selectEmployee(int companyK) {
		return session.selectList("EmployeeMapper.selectEmployeeList", companyK);
	}

	public List<EmployeeVo> selectDepartment(int companyK) {
		return session.selectList("EmployeeMapper.selectDepartment", companyK);
	}

	public int insertAttach(AttachmentVo av) {
		return session.insert("NoteMapper.insertAttach", av);
	}

	public List<NoteVo> selectSendNoteList(int ekey) {
		return session.selectList("NoteMapper.selectSendNoteList", ekey);
	}

	public NoteVo selectSendNoteDetail(NoteVo note) {
		return session.selectOne("NoteMapper.selectSendDetail", note);
	}

	public List<ReceivenoteVo> selectReceiveList(NoteVo note) {
		return session.selectList("NoteMapper.selectReceiveList", note);
	}

	public int updateDelYn(NoteVo note) {
		return session.update("NoteMapper.updateDeleteYn", note);
	}


}
