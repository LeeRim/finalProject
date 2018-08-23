
package com.jdl.css.employee.controller;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.approval.model.service.ApprovalService;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.border.model.service.BorderService;
import com.jdl.css.border.model.vo.BorderVo;
import com.jdl.css.calender.model.service.CalenderService;
import com.jdl.css.calender.model.vo.CalenderVo;
import com.jdl.css.common.model.service.AttachmentService;
import com.jdl.css.common.model.service.VacationService;
import com.jdl.css.common.model.vo.VacationVo;
import com.jdl.css.employee.model.service.EmployeeService;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.note.model.service.NoteService;
import com.jdl.css.note.model.vo.NoteVo;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService eService;
	@Autowired
	AttachmentService attachservice;
	@Autowired
	NoteService nService;
	@Autowired
	VacationService vService;

	@Autowired
	CalenderService cservice;

	@Autowired
	BorderService borderservice;
	
	@Autowired
	ApprovalService aService;

	@RequestMapping("loginForm.do")
	public String openLoginForm() {
		return "index/login";
	}
	
	
	
	@RequestMapping("login.do")
	public ModelAndView login(EmployeeVo employee,HttpSession session, ModelAndView mv){
		EmployeeVo user = eService.selectEmployeeById(employee.geteId());

		List<NoteVo> indexNote = nService.selectIndexNote(user.geteKey());
		List<ApprovalVo> waitingApprovals = aService.selectWaitingApprovalList(user.geteKey());

		//근속년수에 따른 총 휴가 값 가지고오기
		VacationVo giveVacation = vService.selectTotalVacation(user);
		//휴가 사용일 가져오기
		List<VacationVo> usedVacation = vService.selectUsedVacation(user);
		int totalUsedVacation = 0;
		for(VacationVo vacation : usedVacation){
			totalUsedVacation += vacation.getvUseddate();
		}
		try{
			user.setTotalVacation(giveVacation.getGvVacadate());
			user.setRemainingVacation(giveVacation.getGvVacadate()-totalUsedVacation);
			user.setWorkYears(giveVacation.getGvYear());
		}catch (NullPointerException e) {
			
		}
		System.out.println(user);
		
		if(user == null){
			System.out.println("아이디 오류");
		}else if(user.getePwd().equals(employee.getePwd())){
			session.setAttribute("user", user);
			/*if(indexNote !=null){
				session.setAttribute("indexNote", indexNote);
			}*/
			session.setAttribute("indexNote", indexNote);
			session.setAttribute("indexApproval", waitingApprovals);
		}else{
			System.out.println("비밀번호 오류");
		}
		String viewName ="";

		if(user.geteType().equals("1")  && user.getcLevel() ==0){
			viewName ="companyStartHome";
		}else if(user.geteType().equals("1")){
			viewName ="redirect:adminIndex.do";
		}else if(user.geteType().equals("2")){
			viewName ="redirect:employeeIndex.do";
		}else if(user.geteType().equals("0")){
			viewName="redirect:adminMain.do";
		}
		mv.setViewName(viewName);
		return mv;
	}
	
	
	//직급 부서 리스트 출력
	@RequestMapping("memberAdd.do")
	public ModelAndView memberAdd(ModelAndView mv, HttpSession session) {
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		List<EmployeeVo> list = eService.selectJobList(employee.getcKeyFk());
		List<EmployeeVo> list2 = eService.selectDepartList(employee.getcKeyFk());

		mv.addObject("list", list);
		mv.addObject("list2", list2);
		mv.setViewName("employee/employeeInsert");
		return mv;
		
	}
	
	
	
	
	
	

	// 사원 등록
	@RequestMapping("insertMember.do")
	public String memberJoin(@RequestParam("eBirth1") String eBirth1, @RequestParam("eHireDate1") String eHireDate1,
			HttpServletRequest request, @RequestParam("ePhoto1") MultipartFile ePhoto, EmployeeVo member,
			HttpSession session) {
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		int cKey = employee.getcKeyFk();

		// System.out.println(ePhoto);
		System.out.println("부서키 = " + member.geteDepartFk());


		
		if(!eBirth1.equals("")){
		Date birth2 = Date.valueOf(eBirth1);
		member.seteBirth(birth2);
		}
		if(!eHireDate1.equals("")){
		Date hire2 = Date.valueOf(eHireDate1);
		member.seteHireDate(hire2);
		}
		
		String root = request.getSession().getServletContext().getRealPath("resources");

		String path = root + "\\upload\\empPhoto";
		String filePath = "";

		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}
			
			filePath = folder + "\\" + ePhoto.getOriginalFilename();
			try {
				ePhoto.transferTo(new File(filePath));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(ePhoto==null){
			member.setePhoto("empty.png");
			}
			else{
			member.setePhoto(ePhoto.getOriginalFilename());
			}
			member.setcKeyFk(cKey);
			
			int result =eService.insertMember(member);
			System.out.println(member);

			
		
		
		
		return "redirect:organizationChart.do";
	}
	
	
	


	//사원등록 아이디체크
		@RequestMapping("empIdCheck.do")
		public @ResponseBody int empAddIdCheck(String eId, HttpSession session){
			
			
			EmployeeVo employee = (EmployeeVo)session.getAttribute("user");
			EmployeeVo chekEmployee = new EmployeeVo();
			int cKey = employee.getcKeyFk();
			
			chekEmployee.setcKeyFk(cKey);
			chekEmployee.seteId(eId);
			
			int result = eService.empIdCheck(chekEmployee);
			
			
			

			return result;
		}
		
		//사원등록 아이디체크
				@RequestMapping("empNoCheck.do")
				public @ResponseBody int empNoCheck(String eNo, HttpSession session){
					
					
					EmployeeVo employee = (EmployeeVo)session.getAttribute("user");
					EmployeeVo chekEmployee = new EmployeeVo();
					int cKey = employee.getcKeyFk();
					System.out.println(eNo);
					System.out.println(cKey);
					chekEmployee.setcKeyFk(cKey);
					chekEmployee.seteNo(eNo);
					
					int result = eService.empNoCheck(chekEmployee);
					
					
					

					return result;
				}
		
		
		
		
	
	

	
	
	//관리자-사원정보 select
	@RequestMapping("employeeInfo.do")
	public ModelAndView employeeInfo(ModelAndView mv,HttpSession session){
		
		EmployeeVo employee = (EmployeeVo)session.getAttribute("user");
		List<EmployeeVo> list = eService.selectJobList(employee.getcKeyFk());
		List<EmployeeVo> list2 = eService.selectDepartList(employee.getcKeyFk());
		
		mv.addObject("list", list);
		mv.addObject("list2", list2);
		
//		System.out.println(main);
		
		int eKey;
		eKey = Integer.parseInt("6");
		
		EmployeeVo select = eService.selectEmployeeInfo(eKey);
		
		
		if(select.getePhoto()==null){
			
			select.setePhoto("empty.png");
		}
		
		System.out.println(select);
		mv.addObject("select", select);
		mv.setViewName("employee/employeeUpdate");
		return mv;
		
	}
	
	
	
	//관리자-사원정보 update
	@RequestMapping("updateEmployee.do" )
	public String updateEmployee(@RequestParam("eBirth1") String eBirth1, @RequestParam("eHireDate1") String eHireDate1,  
			@RequestParam("eEntDate1") String eEntDate1, HttpServletRequest request,
			@RequestParam("ePhoto1") MultipartFile ePhoto, @RequestParam("ePhoto2") String ePhoto2, EmployeeVo member, HttpSession session){
		EmployeeVo employee = (EmployeeVo)session.getAttribute("user");
		int cKey = employee.getcKeyFk();
		
		Date birth2= null;
		Date hire2= null;
		Date ent2= null;
		
		if(eBirth1 != null && !eBirth1.equals("")){
		birth2 = Date.valueOf(eBirth1);
		member.seteBirth(birth2);
		}
		if(eHireDate1 != null && !eHireDate1.equals("")){
		hire2 = Date.valueOf(eHireDate1);
		member.seteHireDate(hire2);
		}
		if(eEntDate1 != null && !eEntDate1.equals("")){
		ent2 = Date.valueOf(eEntDate1);
		member.seteEntDate(ent2);
		}

			
			//기존 파일 삭제
		//새로업로드된 파일이 있거나 기존 employee사진과 파일명이 같지 않을때만 실행
		if(!ePhoto.getOriginalFilename().equals("")){
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			java.util.Date dt = new java.util.Date();
			
			String root = request.getSession().getServletContext().getRealPath("resources");
			String path = root + "\\upload\\empPhoto"; 
			String filePath = "";
			
			File folder = new File(path);
			filePath = folder + "\\" + sdf.format(dt)+ ePhoto.getOriginalFilename();
			File oldFile = new File(filePath);
			if(oldFile.exists()){
				oldFile.delete();
			}
					
			//새로운 파일 저장
			String newFilePath = folder + "\\" + sdf.format(dt) + ePhoto.getOriginalFilename();
			try {
				ePhoto.transferTo(new File(filePath));
			} catch (Exception e) {
				e.printStackTrace();
			}

			member.setePhoto(sdf.format(dt)+ePhoto.getOriginalFilename());
		}else if(ePhoto2.equals("")){
			member.setePhoto(null);
		}else{
			member.setePhoto(ePhoto2);
		}
		
		
		//비밀번호 null값 일시 기존 비밀번호 입력
			if(member.getePwd().equals("")){
			member.setePwd(employee.getePwd());
			}
			member.setcKeyFk(cKey);
		
			int result =eService.updateEmployee(member);
			System.out.println("업데이트 : " + member);
			
			EmployeeVo user = eService.selectSessionEmployee(member);
			List<NoteVo> indexNote = nService.selectIndexNote(user.geteKey());
		      //근속년수에 따른 총 휴가 값 가지고오기
		      VacationVo giveVacation = vService.selectTotalVacation(user);
		      //휴가 사용일 가져오기
		      List<VacationVo> usedVacation = vService.selectUsedVacation(user);

		      int totalUsedVacation = 0;
		      for(VacationVo vacation : usedVacation){
		         totalUsedVacation += vacation.getvUseddate();
		      }
		      try{
		         user.setTotalVacation(giveVacation.getGvVacadate());
		         user.setRemainingVacation(giveVacation.getGvVacadate()-totalUsedVacation);
		         user.setWorkYears(giveVacation.getGvYear());
		      }catch (NullPointerException e) {
		         
		      }
		      if(result > 0){
		    	  session.setAttribute("user", user);
		      }
		      System.out.println("update시 session 값 : " + user);
			
			
		return "redirect:organizationChart.do";
	}
	
	
	
	@RequestMapping("department.do")
	public String department() {
		return "employee/department";
	}

	@RequestMapping("jobGrade.do")
	public String jobGrade() {
		return "employee/jobGrade";
	}

	// 사원 정보 리스트 출력
	@RequestMapping("organizationChart.do")
	public ModelAndView employeeList(ModelAndView mv, HttpSession session) {

		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int cKey = employee.getcKeyFk();

		List<EmployeeVo> list = eService.selectEmployeeList(cKey);
		mv.addObject("list", list);
		mv.setViewName("employee/organizationChart");
		return mv;
	}

	// select 사원 정보 리스트 출력
	@RequestMapping("organizationChart2.do")
	public @ResponseBody List<EmployeeVo> employeeList2(String main, HttpSession session) {
		System.out.println(main);
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int cKey = employee.getcKeyFk();
		String[] eNo = main.split(",");

		int[] eNo2 = new int[eNo.length];
		int aa;
		for (int i = 0; i < eNo2.length; i++) {

			aa = Integer.parseInt(eNo[i]);
			eNo2[i] = aa;

		}

		List<EmployeeVo> list = eService.selectEmployeeList(cKey);
		List<EmployeeVo> selectList = new ArrayList<EmployeeVo>(list.size());

		for (int i = 0; i < eNo2.length; i++) {

			for (int i2 = 0; i2 < list.size(); i2++) {

				if (eNo2[i] == list.get(i2).geteKey()) {

					selectList.add(list.get(i2));

				}
			}
		}

		return selectList;
	}

	// select 사원 정보 팝업 출력
	@RequestMapping("selectEmployeeInfo.do")
	public @ResponseBody EmployeeVo selectEmployeeInfo(String main) {
		System.out.println(main);

		int eKey;
		eKey = Integer.parseInt(main);

		EmployeeVo list = eService.selectEmployeeInfo(eKey);

		System.out.println(list);
		return list;
	}

	@RequestMapping("employeeIndex.do")
	public ModelAndView employeeIndex(ModelAndView mav)throws ServletException, IOException {
		InetAddress addr = null;
		addr = InetAddress.getLocalHost();
		String ipLocation = addr.getHostAddress();
		
		List<CalenderVo> list = cservice.showCalender();
		mav.addObject("list", list);

		List<BorderVo> board1 = borderservice.selectBoardOneEmp(); // 공지사항
		List<BorderVo> board2 = borderservice.selectBoardTwoEmp(); // 자유
		List<BorderVo> board3 = borderservice.selectBoardThrEmp(); // 경조사
		mav.addObject("board1", board1);
		mav.addObject("board2", board2);
		mav.addObject("board3", board3);
		mav.addObject("ipLocation",ipLocation);

		mav.setViewName("employee/employeeIndex");
		return mav;
	}

	@RequestMapping("adminIndex.do")
	public ModelAndView adminIndex(ModelAndView mav) {

		List<BorderVo> board1 = borderservice.selectBoardOneEmp(); // 공지사항
		mav.addObject("board1", board1);

		mav.setViewName("employee/adminIndex");
		return mav;
	}

	@RequestMapping("logout.do")
	public String employeeLogout(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "mainPage";
	}
	
	@RequestMapping("insertMember2.do")
	public String memberJoin2(@RequestParam("eBirth1") String eBirth1, @RequestParam("eHireDate1") String eHireDate1,
			HttpServletRequest request, @RequestParam("ePhoto1") MultipartFile ePhoto, EmployeeVo member,
			HttpSession session, @RequestParam("flag") String flag) {
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		int cKey = employee.getcKeyFk();
		String view="";
		if(flag.equals("true")){

		// System.out.println(ePhoto);
		System.out.println("부서키 = " + member.geteDepartFk());

		String birth = eBirth1;
		String hire = eHireDate1;

		Date birth2 = Date.valueOf(eBirth1);
		Date hire2 = Date.valueOf(eHireDate1);

		member.seteBirth(birth2);
		member.seteHireDate(hire2);

		String root = request.getSession().getServletContext().getRealPath("resources");

		String path = root + "\\upload\\empPhoto";
		String filePath = "";

		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		filePath = folder + "\\" + ePhoto.getOriginalFilename();
		try {
			ePhoto.transferTo(new File(filePath));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		member.setePhoto(ePhoto.getOriginalFilename());
		member.setcKeyFk(cKey);

		int result = eService.insertMember(member);
		System.out.println(flag);
		
		
			view ="companyStartHome";
		}else{
			view ="redirect:companyPayment.do?cKeyFk="+cKey;
		}
		return view;
	}
	
	@RequestMapping("stateUpdate.do")
	public ModelAndView stateUpdate(ModelAndView mv, EmployeeVo employee,HttpSession session){
		EmployeeVo eKeyEm = (EmployeeVo)session.getAttribute("user");
		employee.seteKey(eKeyEm.geteKey());

		int	result = eService.stateUpdate(employee);
		if(result >0){
			eKeyEm.seteState(employee.geteState());
			session.setAttribute("user", eKeyEm);
		}
		
		mv.setViewName("employee/employeeIndex");
		return mv;
	}
		
		//마이페이지 수정
		@RequestMapping("myPageUpdate.do")
		public String myPageUpdate(){
			return "employee/myPageUpdate";
		}

}
