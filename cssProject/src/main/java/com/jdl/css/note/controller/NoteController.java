package com.jdl.css.note.controller;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.note.model.service.NoteService;
import com.jdl.css.note.model.vo.NoteVo;
import com.jdl.css.note.model.vo.ReceivenoteVo;

@Controller
public class NoteController {
	
	@Autowired
	NoteService service;
	
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
	public ModelAndView sendNote(NoteVo note ,ModelAndView mv, @RequestParam("files") MultipartFile[] files, HttpServletRequest request
											,HttpSession session){
		if(files[1] !=null && !(files[1].getOriginalFilename().equals(""))){
			note.setSnAttachYn("Y");
		}else{
			note.setSnAttachYn("N");
		}
		int resultSend = service.insertNote(note);
		List<AttachmentVo> attachList = new ArrayList<AttachmentVo>();
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String path = root + "\\upload\\sendNote"; //spring에서는 경로가 '/'아니라 '\\'로 경로를 나타냄
		String filePath = "";
		
		
		File folder = new File(path);
		if(!folder.exists()){
			folder.mkdirs();
		}
		MultipartFile file = null;
		if(!(files[1].getOriginalFilename().equals(""))){
			for(int i = 1 ; i < files.length; i++){
				file = files[i];
//			System.out.println("files.length : " + files.length);
//			System.out.println(file.getOriginalFilename());
//			System.out.println("folder : " + folder);
				
				filePath = folder + "\\" + file.getOriginalFilename();
				
//			System.out.println("filePath : " + filePath);
				try {
					file.transferTo(new File(filePath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
//			System.out.println("file 명 = "+file.getOriginalFilename());
				AttachmentVo attach = new AttachmentVo();
				String fileSize= "";
				
				if(file.getSize() > 1000000){
					fileSize = file.getSize() / 1000000 + "MB";
				}else if(file.getSize() > 1000){
					fileSize = file.getSize() / 1000 + "KB"; 
				}
				attach.setAttaFileName(file.getOriginalFilename());
				attach.setAttaFilePath("sendNote");
				attach.setAttaLocation(note.getSnKey());
				attach.setAttaFilesize(fileSize);
				
				attachList.add(attach);
			}
		}
		
		note.setAttach(attachList);
		
		int resultReceive = service.insertReceiveNote(note);
		System.out.println("receive = "+resultReceive );
		
		int resultAttach = service.insertAttach(note);
		System.out.println("attach = " +resultAttach );
		mv.setViewName("redirect:sendNoteList.do");
		
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//받은쪽지 변경된 session 값 초기화
		List<NoteVo> indexNote = service.selectIndexNote(user.geteKey());
		session.setAttribute("indexNote", indexNote);
		return mv;
	};
	
	@RequestMapping("sendNoteList.do")
	public ModelAndView sendNoteList(ModelAndView mv, HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//사원키
		int ekey = user.geteKey();
		
		List<NoteVo> sendNoteList = service.selectSendNoteList(ekey);
		
//		System.out.println(sendNoteList);
		
		mv.addObject("sendNoteList", sendNoteList);
		
		
		mv.setViewName("note/sendNoteList");
		return mv;
	}
	
	@RequestMapping("sendNoteDetail.do")
	public ModelAndView sendNoteDetail(ModelAndView mv ,NoteVo note){
		NoteVo noteDetail = service.selectSendNoteDetail(note);
		List<ReceivenoteVo> receiveList = service.selectReceiveList(note);
		
		mv.addObject("receiveList", receiveList);
		mv.addObject("sendDetail", noteDetail);
		mv.setViewName("note/sendNoteDetail");
		return mv;
	}
	
	@RequestMapping("sendNoteDelete.do")
	public ModelAndView sendNoteDelete(ModelAndView mv, NoteVo note){
		int resultUpdate = 0;
		String view="";
		System.out.println(note);
		if(note.getSnDeleteYn().equals("N")){
			resultUpdate = service.updateDelYn(note);
			view = "redirect:sendNoteList.do";
		}else{
			resultUpdate = service.updateTrashDelSendNote(note);
			view = "redirect:sendNoteTrashList.do";
		}
//		System.out.println(resultUpdate);
		
		mv.setViewName(view);
		return mv;
	}
	
	@RequestMapping("sendNoteTrashList.do")
	public ModelAndView sendNoteTrashList(ModelAndView mv, HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//사원키
		int ekey = user.geteKey();
		
		List<NoteVo> sendNoteList = service.selectSendNoteList(ekey);
		
		mv.addObject("sendNoteList", sendNoteList);
		mv.setViewName("note/sendNoteTrashList");
		return mv;
	}
	
	@RequestMapping("sendNoteRestore.do")
	public ModelAndView sendNoteRestore(ModelAndView mv, NoteVo note){
		int resultUpdate = service.updateDelYn(note);
		System.out.println(resultUpdate);
		
		mv.setViewName("redirect:sendNoteTrashList.do");
		return mv;
	}
	
	@RequestMapping("searchSendNote.do")
	public ModelAndView searchSendNote(ModelAndView mv, NoteVo note ,HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//사원키 객체에 저장
		note.setSnSenderFk(user.geteKey());
		
		List<NoteVo> searchList = service.selectSearchSendNote(note);
		
		mv.addObject("sendNoteList", searchList);
		String viewName = "";
		
		if(note.getSnDeleteYn().equals("N")){
			viewName="note/sendNoteList";
		}else if(note.getSnDeleteYn().equals("Y")){
			viewName="note/sendNoteTrashList";
		}
		
		mv.setViewName(viewName);
		return mv;
	}
	
	
}
