package com.jdl.css.employee.controller;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.employee.model.service.EmployeeService;
import com.jdl.css.employee.model.vo.EmployeeVo;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeService eService;

	@RequestMapping("loginForm.do")
	public String openLoginForm(){
		return "index/login";
	}
	
	@RequestMapping("login.do")
	public String login(EmployeeVo e,HttpSession session){
		EmployeeVo user = eService.selectEmployeeById(e.geteId());
		System.out.println(user);
		if(user.getePwd().equals(e.getePwd())){
			session.setAttribute("user", user);
		}else{
			System.out.println("비밀번호 오류");
		}
		return "redirect:index.do";
	}
	
//	@RequestMapping("organizationChart.do")
//	public String organizationChart(){	
//		return "organizationChart";
//	}
	
	@RequestMapping("memberAdd.do")
	public ModelAndView memberAdd(ModelAndView mv){
		List<EmployeeVo> list = eService.selectJobList();
		List<EmployeeVo> list2 = eService.selectDepartList();
		
		mv.addObject("list", list);
		mv.addObject("list2", list2);
		mv.setViewName("employee/memberAdd");
		return mv;
		
	}
	
	
	
	@RequestMapping("insertMember.do" )
	public String memberJoin(@RequestParam("eBirth1") String eBirth1, @RequestParam("eHireDate1") String eHireDate1, EmployeeVo member){
//		int result =eService.insertMember(member);
		
		String birth=eBirth1;
		String hire=eHireDate1;
		

		
		Date birth2 = Date.valueOf(eBirth1);
		Date hire2 = Date.valueOf(eHireDate1);

		
		member.seteBirth(birth2);
		member.seteHireDate(hire2);
		
		int result =eService.insertMember(member);
		System.out.println(member);
		
		return "redirect:employee/organizationChart.do";
	}
	
	@RequestMapping("department.do")
	public String department(){
		return "employee/department";
	}
	@RequestMapping("jobGrade.do")
	public String jobGrade(){
		return "employee/jobGrade";
	}
	

	@RequestMapping("organizationChart.do")
	public ModelAndView employeeList(ModelAndView mv){
		
		List<EmployeeVo> list = eService.selectEmployeeList();
		
		mv.addObject("list", list);
		mv.setViewName("employee/organizationChart");
		return mv;
	}
	
	@RequestMapping("organizationChart2.do")
	public @ResponseBody List<EmployeeVo> employeeList2(String main){
		System.out.println(main);
		
		String[] eNo = main.split(",");
			

			int[] eNo2 = new int[eNo.length];
			
			for(int i=1; i>eNo.length;i++){
				
 
				eNo2[i] = Integer.parseInt(eNo[i]);
			}
		 
		
		List<EmployeeVo> list = eService.selectEmployeeList();

		System.out.println(list.get(0).geteKey());
		
		int[] arry= new int[list.size()];
		
		String[] test = new String[eNo.length];
		
		for(int i=1; i>eNo.length;i++){
		
			for(int i2=1; i2>list.size();i2++){
				
				if(eNo2[i]==list.get(i2).geteKey()){
					
					test[i] = list.get(i2).geteName();
				
			
				}
			}
		}
		System.out.println(test[0]+test[1]);
		
		
		return list;
	}
	
	
	
	
	
		@RequestMapping("employeeIndex.do")
	public String employeeIndex(){
		return "employee/employeeIndex";
	}
		
		
//		@RequestMapping("selectEmployee.do")
//		public ModelAndView selectEmployee(ModelAndView mv){
//			
//			List<EmployeeVo> list3 = eService.selectEmployee();
////			System.out.println(list);
//			mv.addObject("list3", list3);
//			mv.setViewName("organizationChart");
//			return mv;
//		}
//		
		
		
		
	
	
	
//	@RequestMapping("insertMember.do" )
//	public String memberJoin(@RequestParam("eExten") int eExten, @RequestParam("ePhone") String ePhone){
//		
//		
//		
//		System.out.println(eExten);
//		System.out.println(ePhone);
//		
//		
//		return "redirect:organizationChart.do";
//	}
	
	
	
	
	
	
	
	
}
