package com.jdl.css.admin.controller;



import java.util.List;

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
	
	@RequestMapping("employeeList.do")
	public ModelAndView employeeList(ModelAndView mv){
		List<CompanyVo> list = service.selectCompanyList();
		mv.addObject("list",list);
		mv.setViewName("admin/companyList");
		return mv;
	}
}
