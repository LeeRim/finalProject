package com.jdl.css.admin.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.admin.model.service.AdminService;
import com.jdl.css.common.model.vo.PaymentVo;
import com.jdl.css.company.model.vo.CompanyVo;
import com.jdl.css.employee.model.vo.EmployeeVo;




@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	@RequestMapping("companyPayment.do")
	public ModelAndView companyPayment(ModelAndView mv,int cKeyFk){
		System.out.println(cKeyFk);
		CompanyVo company = service.selectComapnyPayment(cKeyFk);
		mv.addObject("company",company);
		mv.setViewName("admin/companyPayment");
		return mv;
	}
	
	@RequestMapping("companyJoinForm.do")
	public String companyJoinForm(){
		return "admin/companyJoinForm";
	}
	
	@RequestMapping(value="companyIdCheck.do", produces="application/text; charset=utf-8")
	public @ResponseBody String companyIdCheck(String id){
		EmployeeVo employee = service.companyIdCheck(id);
		String msg = "";
		if(employee != null){
			msg = "중복 된 아이디 입니다.";
		}
		return msg;
	}
	
	@RequestMapping("companyJoin.do")
	public String comapnyJoin(CompanyVo company, EmployeeVo employee){
		service.insertCompany(company);
		
		employee.setcKeyFk(company.getcKey());
		employee.seteName(company.getcOwner());
		service.insertEmployeeAdmin(employee);
		return "redirect:index.do";
	}
	
	@RequestMapping("adminMain.do")
	public ModelAndView adminMain(ModelAndView mv){
		List<CompanyVo> markList = service.selectMarkList();
		mv.addObject("markList",markList);
		
		int allCount = service.selectAllCompanyCount();
		mv.addObject("allCount",allCount);
		int countLevel1 = service.selectCountLevel1();
		mv.addObject("count1",countLevel1);
		int countLevel2 = service.selectCountLevel2();
		mv.addObject("count2",countLevel2);
		int countLevel3 = service.selectCountLevel3();
		mv.addObject("count3",countLevel3);
		
		List<CompanyVo> top5List = service.selectTop5CompanyList();
		mv.addObject("top5List",top5List);
		
		List<CompanyVo> nowCalList = service.selectNowCalList();
		mv.addObject("nowCalList",nowCalList);
		
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
	
	@RequestMapping("calendarList.do")
	public @ResponseBody List<CompanyVo> calList(String dateList){
		List<CompanyVo> calList = service.selectCalList(dateList);
		return calList;
	}
	
	@RequestMapping(value="companyPaymentP.do", produces="application/text; charset=utf-8")
	public @ResponseBody String companyPaymentP(HttpServletRequest request){
		int cKeyFk = Integer.parseInt(request.getParameter("cKeyFk"));
		String payMileage = request.getParameter("payMileage");
		int payVoucher = Integer.parseInt(request.getParameter("payVoucher"));
		PaymentVo paymentVo = new PaymentVo(cKeyFk, payMileage,payVoucher); 
		service.insertCompanyPaymentP(paymentVo);
		int cLevel = Integer.parseInt(request.getParameter("cLevel"));
		
		CompanyVo company = new CompanyVo(cKeyFk, payMileage, cLevel,payVoucher);
		company.setcKey(cKeyFk);
		company.setcMileage(payMileage);
		company.setcLevel(cLevel);
		if(payVoucher == 1){
			company.setPayVoucher(31);
		}else if(payVoucher == 3){
			company.setPayVoucher(93);
		}else if(payVoucher == 6){
			company.setPayVoucher(186);
		}else{
			company.setPayVoucher(365);
		}
		service.insertCompanyPaymentC(company);
		String mmmm = "redirect:companyPayment.do?cKeyFk="+cKeyFk;
		return mmmm;
	}
	
	
	@RequestMapping("salesPage.do")
	public ModelAndView salesPage(ModelAndView mv){
		List<PaymentVo> monthSumAll = service.selectMonthSumSales();
		mv.addObject("monthSumAll",monthSumAll);
		
		List<PaymentVo> levelCountPer = service.selectLevelCountPer();
		mv.addObject("levelCountPer",levelCountPer);
		
		List<PaymentVo> monthSumLevel = service.selectMonthSumLevel();
		mv.addObject("monthSumLevel",monthSumLevel);
		
		PaymentVo paymentVo = service.selectAllCount();
		mv.addObject("paymentVo",paymentVo);
		
		mv.setViewName("admin/salesPage");
		return mv;
	}
	
	@RequestMapping("companyPaymentList.do")
	public ModelAndView companyPaymentList(ModelAndView mv){
		List<CompanyVo> companyPaymentList = service.selectCompanyPaymentList();
		mv.addObject("companyPaymentList",companyPaymentList);
		mv.setViewName("admin/companyPaymentList");
		return mv;
	}
}
