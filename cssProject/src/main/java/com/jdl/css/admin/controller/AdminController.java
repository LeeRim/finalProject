package com.jdl.css.admin.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.admin.model.service.AdminService;
import com.jdl.css.company.model.vo.CompanyVo;




@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	@RequestMapping("adminMain.do")
	public ModelAndView adminMain(ModelAndView mv){
		List<CompanyVo> list = service.selectMarkList();
		mv.addObject("list",list);
		mv.setViewName("admin/admin_main");
		return mv;
	}
	@RequestMapping("companyList.do")
	public ModelAndView companyList(ModelAndView mv){
		List<CompanyVo> list = service.selectCompanyList();
		mv.addObject("list",list);
		mv.setViewName("admin/companyList");
		return mv;
	}
	
	@RequestMapping("companySet.do")
	public ModelAndView companySetList(ModelAndView mv){
		List<CompanyVo> list = service.selectCompanySetList();
		mv.addObject("list",list);
		mv.setViewName("admin/companySetList");
		return mv;
	}
	
	@RequestMapping("updateCompanyLevel.do")
	public String updateCompanyLevel(CompanyVo company, HttpServletRequest request){
		int cLevel = Integer.parseInt(request.getParameter("cLevel"));
		String cKey = request.getParameter("companyList");
		String listValue = request.getParameter("listValue");
		service.updateCompanyLevel(cLevel, cKey);
		if(listValue.equals("setList")){
			return "redirect:companySet.do";			
		}
		return "redirect:companyList.do";
	}
	
	@RequestMapping("qnaList.do")
	public String qnaList(){
		return "admin/qnaList";
	}
}
