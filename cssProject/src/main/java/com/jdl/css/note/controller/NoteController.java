package com.jdl.css.note.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.note.model.service.NoteService;
import com.jdl.css.note.model.vo.NoteVo;

@Controller
public class NoteController {
	
	@Autowired
	NoteService service;
	
	@RequestMapping("moveNote.do")
	public String moveNote(){
		return "note/noteMain";
	}
	
	@RequestMapping("writeNote.do")
	public String writeNote(HttpSession session,Model model){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//회사키
		int companyK=user.getcKeyFk();
//		System.out.println("회사키 = "+ companyK);
		
		List<EmployeeVo> employee = service.selectEmployee(companyK);
		List<EmployeeVo> department = service.selectDepartment(companyK);
//		System.out.println(department);
//		System.out.println(employee);
		
		model.addAttribute("employee",employee);
		model.addAttribute("department", department);
		
		return "note/writeNote";
	}
	
	@RequestMapping("sendNote.do")
	public ModelAndView sendNote(NoteVo note ,ModelAndView mv){
		
//		System.out.println("note(전) = "+note);
		int resultSend = service.insertNote(note);
		
//		System.out.println("note(후) = " + note);
		
		int resultReceive = service.insertReceiveNote(note);
		
//		System.out.println("result = "+resultReceive);
		mv.setViewName("note/noteMain");
		
		return mv;
	};
}
