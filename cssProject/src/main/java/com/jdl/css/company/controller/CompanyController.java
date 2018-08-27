package com.jdl.css.company.controller;

import java.io.File;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.company.model.service.CompanyService;
import com.jdl.css.company.model.vo.CompanyVo;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Controller
public class CompanyController {
	
	@Autowired
	CompanyService eService;
	
	
	
	@RequestMapping("companyUpdate.do")
	public ModelAndView companyUpdate(ModelAndView mv, HttpSession session) {
		
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		int cKey = employee.getcKeyFk();
		
		CompanyVo select = eService.selectCompanyInfo(cKey);
		
		System.out.println(select);

		mv.addObject("select", select);
		mv.setViewName("company/companyUpdate");
		
		return mv;
	}
	
	
	@RequestMapping("companyModify.do")
	public String companyModify(HttpServletRequest request,
			@RequestParam("cLogo1") MultipartFile cLogo1, @RequestParam("cSign1") MultipartFile cSign1,
			@RequestParam("cLogo2") String cLogo2, @RequestParam("cSign2") String cSign2, CompanyVo company, HttpSession session){
		
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		int cKey = employee.getcKeyFk();
		
		System.out.println(company);
		
		
		
		//로고
	if(!cLogo1.getOriginalFilename().equals("")){
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			java.util.Date dt = new java.util.Date();
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			String path = root + "\\upload\\CompanyLogo"; 
			String filePath = "";
			
			File folder = new File(path);
			filePath = folder + "\\" + sdf.format(dt)+ cLogo1.getOriginalFilename();
			File oldFile = new File(filePath);
			if(oldFile.exists()){
				oldFile.delete();
			}
					
			//새로운 파일 저장
			String newFilePath = folder + "\\" + sdf.format(dt) + cLogo1.getOriginalFilename();
			try {
				cLogo1.transferTo(new File(filePath));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			

			company.setcLogo(sdf.format(dt)+cLogo1.getOriginalFilename());
		}
		else if(cLogo2.equals("")){
			company.setcLogo(null);
		}
		
		else{
			company.setcLogo(cLogo2);
		}
		
	
	
	//사인
		
	if(!cSign1.getOriginalFilename().equals("")){
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		java.util.Date dt = new java.util.Date();
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String path = root + "\\upload\\CompanySign"; 
		String filePath = "";
		
		File folder = new File(path);
		filePath = folder + "\\" + sdf.format(dt)+ cSign1.getOriginalFilename();
		File oldFile = new File(filePath);
		if(oldFile.exists()){
			oldFile.delete();
		}
				
		//새로운 파일 저장
		String newFilePath = folder + "\\" + sdf.format(dt) + cSign1.getOriginalFilename();
		try {
			cSign1.transferTo(new File(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

		company.setcSign(sdf.format(dt)+cSign1.getOriginalFilename());
	}
	else if(cSign2.equals("")){
		company.setcSign(null);
	}
	
	else{
		company.setcSign(cSign2);
	}
		
		
		
		
		company.setcKey(cKey);
		
		int result =eService.companyModify(company);
		System.out.println("업데이트 확인 : " + result);
		
		
		return "redirect:companyUpdate.do";
	}
	
	
	
	
	
	
	
	
	
	

}
