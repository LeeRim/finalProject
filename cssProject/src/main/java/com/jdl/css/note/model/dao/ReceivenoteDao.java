package com.jdl.css.note.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jdl.css.note.model.vo.NoteVo;
import com.jdl.css.note.model.vo.ReceivenoteVo;

@Repository
public class ReceivenoteDao {
	@Autowired
	SqlSessionTemplate session;

	public List<ReceivenoteVo> selectReceiveNote(int ekey) {
		return session.selectList("NoteMapper.selectReceiveNote", ekey);
	}

	public int updateReadYn(ReceivenoteVo receiveNote) {
		return session.update("NoteMapper.updateReadYnReceive", receiveNote);
	}

	public NoteVo selectSendNoteDetail(ReceivenoteVo receiveNote) {
		return session.selectOne("NoteMapper.selectSendDetail", receiveNote);
	}

	public List<ReceivenoteVo> selectReceiveList(ReceivenoteVo receiveNote) {
		return session.selectList("NoteMapper.selectReceiveList", receiveNote);
	}

	public ReceivenoteVo selectReceiveNoteDetail(ReceivenoteVo receiveNote) {
		return session.selectOne("NoteMapper.selectReceiveNoteDetail", receiveNote);
	}

	public int updateDeleteYn(ReceivenoteVo receiveNote) {
		return session.update("NoteMapper.updateReceiveDeleteYn", receiveNote);
	}

	public int updateReceiveNoteDel(ReceivenoteVo receiveNote) {
		return session.update("NoteMapper.updateReceiveNoteDel", receiveNote);
	}

}
