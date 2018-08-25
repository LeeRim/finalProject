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
		
		qv.setqWriterFk(employee.getcKeyFk());
		//System.out.println("QNA 작성 : " + qv);
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
			attach.setAttaFilePath("QNA");
			attach.setAttaLocation(qv.getqKey());
			attachList.add(attach);
		
		qv.setAttach(attachList);
		
		int resultAttach = attachservice.insertAttachments(attachList);
		
		mv.setViewName("redirect:qnaList.do");
		return mv;
	}
	
	@RequestMapping("updateQNA.do")
	public ModelAndView updateQna(QNAVo qv, ModelAndView mv){
		//
		int QNAresult = service.updateQNA(qv);
		QNAVo qvg = service.selectone(qv.getqKey());
		System.out.println("업데이트 후 질문 답변 : " + qv);
		System.out.println("질문자의 질문과 답변 얻어오기 : " + qvg);
		mv.addObject("qv", qvg);
		mv.setViewName("redirect:qnaList.do");
		return mv;
	}
	
	@RequestMapping("qnaList.do")
	public ModelAndView qnaList(HttpSession session, ModelAndView mv){
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		//본인의 리스트만 조회 로직
		
		
		//관리자는 모든 리스트를 조회해오는 로직
		if(employee.geteType().charAt(0) == '0'){
			List<QNAVo> list = service.selectAll();
			mv.addObject("list", list);
			
		}else if(employee.geteType().charAt(0) == '1'){
			List<QNAVo> list = service.selectQNA(employee);
			//System.out.println("질문답변 : " + list);
			mv.addObject("list", list);
		}
		mv.setViewName("qna/qnaList");
		return mv;
	}
	
	@RequestMapping("back.do")
	public String back(){
		return "home";
	}
	
	@RequestMapping("QNA.do")
	public String longd(){
		return "qna/QNAWrite";
	}
	
	@RequestMapping("selectQNA.do")
	public ModelAndView selectQNA(ModelAndView mv, int qKey){
		//System.out.println("키 값 : " + qKey);
		QNAVo qv = service.selectone(qKey);
		
		AttachmentVo qnaAttach = attachservice.qnaAttach(qKey);
		//System.out.println("받아오는 값 확인 : " + qnaAttach);
		mv.addObject("qnaAttach", qnaAttach);
		mv.addObject("qv", qv);
		mv.addObject("qKey", qKey);
		mv.setViewName("qna/QNAre");
		return mv;
	}
	
	@RequestMapping("QNAreply.do")
	public ModelAndView qnareplay(int qKey, ModelAndView mv){
		//System.out.println("키 값 : " + qKey);
		QNAVo qv = service.selectone(qKey);
		
		AttachmentVo qnaAttach = attachservice.qnaAttach(qKey);
		
		System.out.println("값 확인 : " + qv);
		mv.addObject("qnaAttach", qnaAttach);
		mv.addObject("qKey", qKey);
		mv.addObject("qv", qv);
		//mv.addObject("qAnswer", qv.getqAnswer());
		mv.setViewName("qna/qnarepaly");
		return mv;
	}
}
