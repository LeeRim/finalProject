package com.jdl.css.givevacation.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.givevacation.model.service.GivevacationService;
import com.jdl.css.givevacation.model.vo.GivevacationVo;

@Controller
public class GivevacationController {

	@Autowired
	GivevacationService service;

	@RequestMapping("givevacation.do")
	public ModelAndView givevacation(ModelAndView mv, HttpSession session) {
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");

		List<GivevacationVo> list = service.selectGive(employee.getcKeyFk());

		System.out.println("리스트 : " + list);
		mv.addObject("list", list);
		mv.setViewName("GIVEVACATION/givevacation");
		return mv;
	}

	@RequestMapping("writeGiveVaction.do")
	public ModelAndView writeGiveVaction(HttpSession session, String gvKey, String gvYear, String gvVacadate,
			 ModelAndView mv) {
		System.out.println("gvKey / " + gvKey);
		System.out.println(gvVacadate);

		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");

		String[] gvK = gvKey.split(",");
		int[] array1 = new int[20];

		for (int i = 0; i < gvK.length; i++) {
			try {
				array1[i] = Integer.parseInt(gvK[i]);
			} catch (NumberFormatException e) {
			}
		}

		String[] gvY = gvYear.split(",");
		int[] array = new int[gvY.length];

		for (int i = 0; i < gvY.length; i++) {
			array[i] = Integer.parseInt(gvY[i]);
		}

		String[] gvV = gvVacadate.split(",");
		int[] array2 = new int[gvV.length];

		for (int i = 0; i < gvV.length; i++) {
			array2[i] = Integer.parseInt(gvV[i]);
		}

		List<GivevacationVo> list = new ArrayList<GivevacationVo>();
		for (int i = 0; i < array.length; i++) {
			GivevacationVo Giv = new GivevacationVo();
			System.out.println(array1[i]);
			Giv.setGvKey(array1[i]);
			Giv.setGvYear(array[i]);
			Giv.setGvVacadate(array2[i]);
			Giv.setcKeyFk(employee.getcKeyFk());
			list.add(Giv);
		}
		int result = service.insertGive(list);
		System.out.println(list.size());

		mv.setViewName("redirect:givevacation.do");
		return mv;
	}

	
	@RequestMapping("empGive.do")
	public String empGive(){
		return "GIVEVACATION/empGiveLookup";
	}
	
	@RequestMapping("selectEmpGive.do")
	public ModelAndView EmpSearchGive(HttpSession session, ModelAndView mv){
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		
		System.out.println("사원정보 조회 : " + employee);
		
		mv.addObject("total", employee.getTotalVacation());
		mv.addObject("remain", employee.getRemainingVacation());
		mv.setViewName("GIVEVACATION/empGiveEsc");
		return mv;
	}
}
