package com.jdl.css.commuteCheck.controller;

import java.io.IOException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.sql.Date;
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

import com.jdl.css.commuteCheck.model.commuteCheckService.CommuteCheckService;
import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;
import com.jdl.css.employee.model.vo.EmployeeVo;


@Controller
public class CommuteCheckController {
	
@Autowired
CommuteCheckService service;
	
	@RequestMapping("commuteCheck.do")
	public ModelAndView showCommuteCheck(ModelAndView mav, HttpServletRequest request)throws ServletException, IOException{
		InetAddress addr = null;
		addr = InetAddress.getLocalHost();
		String ipLocation = addr.getHostAddress();
		
		mav.addObject("ipLocation",ipLocation);
			mav.setViewName("commuteCheck/commuteCheck");
		return mav;
	}
	
	
	@RequestMapping("commuteOut.do")
	public ModelAndView insertOutCommuteCheck(CommuteCheckVo commute, ModelAndView mav,HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		System.out.println(user);
		
		int result = service.insertOutCommuteCheck(user);
		CommuteCheckVo cc=service.selectCommute(commute);
		mav.addObject("user",user);
		mav.addObject(commute);
		mav.setViewName("redirect:commuteCheck.do");
		return mav;
	}
	
	@RequestMapping("commuteone.do")
	public ModelAndView innerCommute(ModelAndView mv, CommuteCheckVo commute,HttpServletRequest request, HttpSession session)throws ServletException, IOException{
		InetAddress addr = null;
		addr = InetAddress.getLocalHost();
		String ipLocation = addr.getHostAddress();
		
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		System.out.println(user);
		
		int point1 = ipLocation.indexOf(".");
		int point2 = ipLocation.indexOf(".", point1 + 1);
		if(ipLocation.substring(0, point1).equals("192") && ipLocation.substring(point1 + 1, point2).equals("168")){	
			int result = service.innserCommute(user);	
			CommuteCheckVo cc = service.selectCommute(commute);
			mv.addObject(user);
			mv.addObject(commute);
		}
		
		
		mv.setViewName("redirect:commuteCheck.do");
		return mv;
	}
	
	@RequestMapping("commuteList.do")
	public ModelAndView selectCommuteList(ModelAndView mav,HttpSession session){
 
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		System.out.println(user);
		List<CommuteCheckVo> list = service.showCommuteCheck(user);
		mav.addObject("user",user);
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("commuteCheck/commuteList");
		return mav;
	}
	
	@RequestMapping("commuteAllList.do")
	public ModelAndView selectCommuteAllList(ModelAndView mav,HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		System.out.println(user);
		
		List<CommuteCheckVo> list = service.showCommuteAllCheck(user);
		mav.addObject("list", list);
		System.out.println(list);
		mav.setViewName("commuteCheck/commuteAllList");
		return mav;
	}
}

