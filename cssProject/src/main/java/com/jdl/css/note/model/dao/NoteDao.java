package com.jdl.css.note.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.note.model.vo.NoteVo;


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


}
