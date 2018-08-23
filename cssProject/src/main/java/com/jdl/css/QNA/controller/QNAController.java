package com.jdl.css.QNA.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.QNA.model.service.Qservice;
import com.jdl.css.QNA.model.vo.QNAVo;
import com.jdl.css.common.model.service.AttachmentService;
import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Controller
public class QNAController {

	@Autowired
	Qservice service;
	
	@Autowired
	AttachmentService attachservice;
	
	@RequestMapping("writeQNA.do")
	public ModelAndView writeQna(@RequestParam("file") MultipartFile file, HttpServletRequest request, QNAVo qv, ModelAndView mv, HttpSession session){
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		qv.setqWriterFk(employee.geteKey());
		int QNAresult = service.insertQNA(qv);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String path = root + "\\upload\\QNA"; //spring에서는 경로가 '/'아니라 '\\'로 경로를 나타냄
		String filePath = "";
		
		
		File folder = new File(path);
		if(!folder.exists()){
			folder.mkdirs();
		}
			AttachmentVo attach = new AttachmentVo();
			filePath = folder + "\\" + file.getOriginalFilename();
			try {
				file.transferTo(new File(filePath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			List<AttachmentVo> attachList = new ArrayList<AttachmentVo>();
			attach.setAttaFileName(file.getOriginalFilename());
			attach.setAttaFilePath("boardGallery");
			attach.setAttaLocation(qv.getqKey());
			attachList.add(attach);
		
		qv.setAttach(attachList);
		
		int resultAttach = attachservice.insertAttachments(attachList);
		
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping("updateQNA.do")
	public ModelAndView updateQna(QNAVo qv, ModelAndView mv){
		
		int QNAresult = service.updateQNA(qv);
		QNAVo qvg = service.selectone(qv.getqKey());
		System.out.println("업데이트 후 질문 답변 : " + qv);
		System.out.println("질문자의 질문과 답변 얻어오기 : " + qvg);
		mv.addObject("qv", qvg);
		mv.setViewName("QNA/QNAre");
		return mv;
	}
	
	@RequestMapping("empQNA.do")
	public ModelAndView empQNA(HttpSession session, ModelAndView mv){
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		System.out.println("관리자 타입 : ");
		System.out.println(employee.geteType());
		System.out.println(employee.geteType() == "1" );
		//본인의 리스트만 조회 로직
		List<QNAVo> list = service.selectQNA(employee);
		
		System.out.println("질문답변 : " + list);
		mv.addObject("list", list);
		mv.setViewName("QNA/qnapage");
		
		//관리자는 모든 리스트를 조회해오는 로직
		List<QNAVo> AllList = service.selectAll();
		if(employee.geteType().equals('1')){
			mv.addObject("list", AllList);
			mv.setViewName("QNA/qnapage");
		}
		return mv;
	}
	
	@RequestMapping("back.do")
	public String back(){
		return "home";
	}
	
	@RequestMapping("QNA.do")
	public String longd(){
		return "QNA/QNAWrite";
	}
	
	@RequestMapping("selectQNA.do")
	public ModelAndView selectQNA(ModelAndView mv, int qKey){
		
		System.out.println("키 값 : " + qKey);
		QNAVo qv = service.selectone(qKey);
		
		mv.addObject("qv", qv);
		mv.addObject("qKey", qKey);
		mv.setViewName("QNA/qnarepaly");
		return mv;
	}
	
}
