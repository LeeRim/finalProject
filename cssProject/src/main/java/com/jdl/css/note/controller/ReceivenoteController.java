package com.jdl.css.note.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.note.model.service.NoteService;
import com.jdl.css.note.model.service.ReceivenoteService;
import com.jdl.css.note.model.vo.NoteVo;
import com.jdl.css.note.model.vo.ReceivenoteVo;

@Controller
public class ReceivenoteController {
	@Autowired
	ReceivenoteService service;
	@Autowired
	NoteService nService;
	
	@RequestMapping("receiveNoteList.do")
	public ModelAndView receiveNoteList(ModelAndView mv,HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//사원키
		int ekey = user.geteKey();
		
		List<ReceivenoteVo> receiveNoteList = service.selectReceiveNote(ekey);
		
//		System.out.println(receiveNoteList);
		mv.addObject("receiveNoteList", receiveNoteList);
		mv.setViewName("note/receiveNoteList");
		return mv;
	}
	
	@RequestMapping("receiveNoteDetail.do")
	public ModelAndView receiveNoteDetail(ModelAndView mv, ReceivenoteVo receiveNote, HttpSession session){
		//읽음 표시 업데이트
		int updateResult = service.updateReadYn(receiveNote);
		
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//받은쪽지 변경된 session 값 초기화
		List<NoteVo> indexNote = nService.selectIndexNote(user.geteKey());
		session.setAttribute("indexNote", indexNote);
		
		NoteVo noteDetail = service.selectSendNoteDetail(receiveNote);
		List<ReceivenoteVo> receiveList = service.selectReceiveList(receiveNote);
		ReceivenoteVo receiveNoteDetail = service.selectReceiveNote(receiveNote);
		
		mv.addObject("receiveList", receiveList);
		mv.addObject("sendDetail", noteDetail);
		mv.addObject("receiveNoteDetail", receiveNoteDetail);
		mv.setViewName("note/receiveNoteDetail");
		return mv;
	}
	
	@RequestMapping("receiveNoteDelete.do")
	public ModelAndView receiveNoteDelete(ModelAndView mv, ReceivenoteVo receiveNote){
		int result = 0;
		String viewName="";
		System.out.println(receiveNote);
		
		if(receiveNote.getRnDeleteYn().equals("N")){
			result =service.updateDeleteYn(receiveNote);
			viewName = "redirect:receiveNoteList.do";
		}else{
		   result = service.updateReceiveNoteDel(receiveNote);
		   viewName = "redirect:receiveNoteTrashList.do";
		}
		
		mv.setViewName(viewName);
		return mv;
	}
	@RequestMapping("receiveNoteTrashList.do")
	public ModelAndView receiveNoteTrashList(ModelAndView mv, HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//사원키
		int ekey = user.geteKey();
		
		List<ReceivenoteVo> receiveNoteList = service.selectReceiveNote(ekey);
		
//		System.out.println(receiveNoteList);
		mv.addObject("receiveNoteList", receiveNoteList);
		mv.setViewName("note/receiveNoteTrashList");
		return mv;
	}
	@RequestMapping("receiveNoteRestore.do")
	public ModelAndView receiveNoteRestore(ModelAndView mv, ReceivenoteVo receiveNote){
System.out.println(receiveNote);
		int result = service.updateDeleteYn(receiveNote);
		
		mv.setViewName("redirect:receiveNoteTrashList.do");
		
		return mv;
	}
	
	@RequestMapping("searchReceiveNote.do")
	public ModelAndView searchReceiveNote(ModelAndView mv, ReceivenoteVo receiveNote, HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//받은 사원번호키 저장
		receiveNote.setRnRecipientFk(user.geteKey());
		
		List<ReceivenoteVo> receiveNoteList = service.selectSearchReceiveNote(receiveNote);
		mv.addObject("receiveNoteList",receiveNoteList);
		
		String viewName= "";
		
		if(receiveNote.getRnDeleteYn().equals("N")){
			viewName = "note/receiveNoteList";
		}else{
			viewName = "note/receiveNoteTrashList";
		}
		mv.setViewName(viewName);
		return mv;
	}
}
