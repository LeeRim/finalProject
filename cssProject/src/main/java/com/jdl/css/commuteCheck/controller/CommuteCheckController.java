package com.jdl.css.commuteCheck.controller;

import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.module.SimpleAbstractTypeResolver;
import com.jdl.css.commuteCheck.model.commuteCheckService.CommuteCheckService;
import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;
import com.jdl.css.employee.model.vo.EmployeeVo;


@Controller
public class CommuteCheckController {
	
@Autowired
CommuteCheckService service;
	
	@RequestMapping("commuteCheck.do")
	public ModelAndView showCommuteCheck(ModelAndView mav,HttpSession session,CommuteCheckVo commute){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		System.out.println(user);
		List<CommuteCheckVo> list = service.showCommuteAllCheck(user);
		List<CommuteCheckVo> list2 = service.showCommuteCheck(user);
		mav.addObject("user",user);
		mav.addObject("list",list);
		mav.addObject("list2",list2);
		System.out.println(list);
		mav.setViewName("commuteCheck/commuteCheck");
		return mav;
	}
	
	
//	@RequestMapping("commuteOut.do")
//	public ModelAndView insertOutCommuteCheck(CommuteCheckVo commute, ModelAndView mav,HttpSession session){
//		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
//		int result = service.insertOutCommuteCheck(user);
//		mav.addObject("user",user);
//		CommuteCheckVo cc=service.selectCommute(user);
//		mav.addObject("commute",commute);
//		mav.setViewName("employee/employeeIndex");
//		return mav;
//	}
	
	/*@RequestMapping("commuteone.do")
	public ModelAndView innerCommute(ModelAndView mav, HttpServletRequest request, HttpSession session)throws ServletException, IOException{
		
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		InetAddress addr = null;
		addr = InetAddress.getLocalHost();
		String ipLocation = addr.getHostAddress();
		mav.addObject("user",user);
		String oneSelect = null;
		
		int point1 = ipLocation.indexOf(".");
		int point2 = ipLocation.indexOf(".", point1 + 1);
		if(ipLocation.substring(0, point1).equals("192") && ipLocation.substring(point1 + 1, point2).equals("168")){	
			int commute = service.innserCommute(user);	
			CommuteCheckVo cc = service.selectCommute(user);
			mav.addObject("commute",commute);
			oneSelect = service.selectOneCommute(user);
			
		}
			
			mav.addObject("oneSelect", oneSelect);
			mav.setViewName("employee/employeeIndex");
		return mav;
	}*/
	

	

}

