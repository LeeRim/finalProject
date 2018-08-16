package com.jdl.css.employee.controller;

import java.sql.Date;
import java.util.ArrayList;
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
	public String login(EmployeeVo employee,HttpSession session){
		EmployeeVo user = eService.selectEmployeeById(employee.geteId());
		System.out.println(user);
		if(user.getePwd().equals(employee.getePwd())){
			session.setAttribute("user", user);
		}else{
			System.out.println("비밀번호 오류");
		}
		return "redirect:index.do";
	}
	
	
	
	@RequestMapping("memberAdd.do")
	public ModelAndView memberAdd(ModelAndView mv){
		List<EmployeeVo> list = eService.selectJobList();
		List<EmployeeVo> list2 = eService.selectDepartList();
		
		mv.addObject("list", list);
		mv.addObject("list2", list2);
		mv.setViewName("employee/memberAdd");
		return mv;
		
	}
	
	
	//사원 등록
	@RequestMapping("insertMember.do" )
	public String memberJoin(@RequestParam("eBirth1") String eBirth1, @RequestParam("eHireDate1") String eHireDate1, EmployeeVo member){

		
		String birth=eBirth1;
		String hire=eHireDate1;
		

		
		Date birth2 = Date.valueOf(eBirth1);
		Date hire2 = Date.valueOf(eHireDate1);

		
		member.seteBirth(birth2);
		member.seteHireDate(hire2);
		
		int result =eService.insertMember(member);
		System.out.println(member);
		
		return "redirect:organizationChart.do";
	}
	
	
	
	@RequestMapping("department.do")
	public String department(){
		return "employee/department";
	}
	
	
	@RequestMapping("jobGrade.do")
	public String jobGrade(){
		return "employee/jobGrade";
	}
	

	
	//사원 정보 리스트 출력
	@RequestMapping("organizationChart.do")
	public ModelAndView employeeList(ModelAndView mv){
		
		List<EmployeeVo> list = eService.selectEmployeeList();
		
		mv.addObject("list", list);
		mv.setViewName("employee/organizationChart");
		return mv;
	}
	
	
	
	
	//select 사원 정보 리스트 출력
	@RequestMapping("organizationChart2.do")
	public @ResponseBody List<EmployeeVo> employeeList2(String main){
		System.out.println(main);
		
		String[] eNo = main.split(",");
			
		
			int[] eNo2 = new int[eNo.length];
			int aa;
			for(int i=0; i<eNo2.length;i++){
				
 
				aa = Integer.parseInt(eNo[i]);
				eNo2[i] = aa;
				
			}
		
		List<EmployeeVo> list = eService.selectEmployeeList();
		List<EmployeeVo> selectList= new ArrayList<EmployeeVo>(list.size());
		
		for(int i=0; i<eNo2.length;i++){
		
			for(int i2=0; i2<list.size();i2++){
				
				if(eNo2[i]==list.get(i2).geteKey()){
					
					selectList.add(list.get(i2));
			
				}
			}
		}
		
		
		
		return selectList;
	}
	
	
	//select 사원 정보 팝업 출력
	@RequestMapping("selectEmployeeInfo.do")
	public @ResponseBody EmployeeVo selectEmployeeInfo(String main){
		System.out.println(main);
		
		int eKey;
		eKey = Integer.parseInt(main);
		
		EmployeeVo list = eService.selectEmployeeInfo(eKey);
		
		System.out.println(list);
			return list;
	}
	
	
	
	
		@RequestMapping("employeeIndex.do")
		public String employeeIndex(){
		return "employee/employeeIndex";
	}
		
		
		
		
		
		
		
		
		
		
		
	
	
	
	
	
	
	
	
}
