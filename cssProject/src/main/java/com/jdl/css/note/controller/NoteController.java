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
	public ModelAndView sendNote(NoteVo note ,ModelAndView mv, @RequestParam("files") MultipartFile[] files, HttpServletRequest request){
		if(files[1] !=null){
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
			attach.setAttaFilePath(path+"\\");
			attach.setAttaLocation(note.getSnKey());
			attach.setAttaFilesize(fileSize);
			
			attachList.add(attach);
		}
		
//		System.out.println(attachList);
		note.setAttach(attachList);
		
		int resultReceive = service.insertReceiveNote(note);
		System.out.println("receive = "+resultReceive );
		
		int resultAttach = service.insertAttach(note);
		System.out.println("attach = " +resultAttach );
		mv.setViewName("note/sendNoteDetail");
		
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
//		System.out.println(note);
		NoteVo noteDetail = service.selectSendNoteDetail(note);
//		System.out.println(noteDetail);
		List<ReceivenoteVo> receiveList = service.selectReceiveList(note);
//		System.out.println(receiveList);
		mv.addObject("receiveList", receiveList);
		mv.addObject("sendDetail", noteDetail);
		mv.setViewName("note/sendNoteDetail");
		return mv;
	}
}
