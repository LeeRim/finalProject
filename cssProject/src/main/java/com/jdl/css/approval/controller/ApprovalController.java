package com.jdl.css.approval.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.approval.model.service.ApprovalService;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.approval.model.vo.JobPropsalVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Controller
public class ApprovalController {
	
	@Autowired
	ApprovalService aService;
	
	@RequestMapping("approvalPage.do")
	public String openApprovalPage(){
		return "approval/approvalPage";
	}
	
	@RequestMapping("jobPropsalPage.do")
	public String openJobPropsalPage(){
		return "approval/approvalForm/jobPropsal";
	}
	
	@RequestMapping("vacationFormPage.do")
	public String openVacationFormPage(){
		return "approval/approvalForm/vacationForm";
	}
	
	@RequestMapping("roundRobinPage.do")
	public String openRoundRobinPage(){
		return "approval/approvalForm/roundRobin";
	}
	
	@RequestMapping("spendingResolutionPage.do")
	public String openspendingResolutionPage(){
		return "approval/approvalForm/spendingResolution";
	}
	
	@RequestMapping("orderFormPage.do")
	public String openOrderFormPage(){
		return "approval/approvalForm/orderForm";
	}
	
	@RequestMapping("selectDraftApprovalList.do")
	public ModelAndView selectDraftApprovalList(ModelAndView mv,HttpSession session){
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		List<ApprovalVo> draftList = aService.selectDraftApprovalList(user);
		System.out.println(draftList);
		mv.addObject("draftList", draftList);
		mv.setViewName("");
		return mv;
	}
	
	@RequestMapping("writeJobPropsal.do")
	public String writeJobPropsal(ApprovalVo app,JobPropsalVo jobp,HttpSession session){
		app.setaWriterFk(((EmployeeVo)session.getAttribute("user")).geteKey());
		//Date jpWorkingDate = Date.valueOf(workingDate);
		//jobp.setJpWorkingDate(jpWorkingDate);
		System.out.println(app);
		System.out.println(jobp);
		return null;
	}

}
