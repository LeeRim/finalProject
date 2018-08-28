package com.jdl.css.employee.controller;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
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
import com.jdl.css.common.model.vo.DivisionVo;
import com.jdl.css.common.model.vo.VacationVo;
import com.jdl.css.commuteCheck.model.commuteCheckService.CommuteCheckService;
import com.jdl.css.commuteCheck.model.commuteCheckVo.CommuteCheckVo;
import com.jdl.css.company.model.service.CompanyService;
import com.jdl.css.company.model.vo.CompanyVo;
import com.jdl.css.employee.model.service.EmployeeService;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.givevacation.model.vo.GivevacationVo;
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
	@Autowired
	CompanyService companyService;
	@Autowired
	CommuteCheckService commservice;
	

	@RequestMapping("loginForm.do")
	public String openLoginForm(HttpSession session) {
		
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		
		  String view ="";
	      if(employee==null){
	    	  view= "index/login";
	      }else{
	    	  if (employee.geteType().equals("1")) {
	    		  view = "redirect:adminIndex.do";
				} else if (employee.geteType().equals("2")) {
					view = "redirect:employeeIndex.do";
				} else if (employee.geteType().equals("0")) {
					view = "redirect:adminMain.do";
				}
	      }
		
		
		return view;
	}
	
	
	
	@RequestMapping("login.do")
	public ModelAndView login(EmployeeVo employee,HttpSession session, ModelAndView mv){
		EmployeeVo user = eService.selectEmployeeById(employee.geteId());

		List<NoteVo> indexNote = nService.selectIndexNote(user.geteKey());
		List<ApprovalVo> waitingApprovals = aService.selectWaitingApprovalList(user.geteKey());

		//근속년수에 따른 총 휴가 값 가지고오기
		GivevacationVo giveVacation = vService.selectTotalVacation(user);
		//휴가 사용일 가져오기
		List<VacationVo> usedVacation = vService.selectUsedVacation(user);
		//근속년수 가지고 오기
		VacationVo workYear = vService.selectWorkYear(user);
//		System.out.println("근속년수  = "+workYear.getWorkyear());
		int totalUsedVacation = 0;
		for(VacationVo vacation : usedVacation){
			totalUsedVacation += vacation.getvUseddate();
		}
		try{
			user.setWorkYears(workYear.getWorkyear());
			user.setTotalVacation(giveVacation.getGvVacadate());
			user.setRemainingVacation(giveVacation.getGvVacadate()-totalUsedVacation);
		}catch (NullPointerException e) {
			
		}
		System.out.println(user);
		String viewName ="";
		
		if(user == null){
			System.out.println("아이디 오류");
			mv.addObject("errorMsg", "아이디 또는 비밀번호가 틀렸습니다.");
			viewName = "index/login";
		}else if(user.getePwd().equals(employee.getePwd())){
			session.setAttribute("user", user);
			session.setAttribute("indexNote", indexNote);
			session.setAttribute("indexApproval", waitingApprovals);

			if (user.geteType().equals("1") && user.getcLevel() == 0) {
				viewName = "redirect:department.do?check=check";
			} else if (user.geteType().equals("1")) {
				viewName = "redirect:adminIndex.do";
			} else if (user.geteType().equals("2")) {
				viewName = "redirect:employeeIndex.do";
			} else if (user.geteType().equals("0")) {
				viewName = "redirect:adminMain.do";
			}
		}else{
			System.out.println("비밀번호 오류");
			mv.addObject("errorMsg", "아이디 또는 비밀번호가 틀렸습니다.");
			viewName = "index/login";
		}

		mv.setViewName(viewName);
		return mv;
	}


	@RequestMapping("login2.do")
	public String login2() {
		return "index/login2";
	}
	
	
	
	@RequestMapping("findPwd.do")
		public @ResponseBody int findPwd(String main){
		
		
		int result=0;
		
		
		EmployeeVo user2 = eService.selectEmail(main);
		System.out.println("user2 : " +user2);
		//6자리의 랜덤 숫자 출력
		Random random = new Random();
		String pwd = String.valueOf(random.nextInt(999999));
		
		//일치하는 이메일 값이 있을 때 리턴값인 result 를 1로 설정하고 비밀번호 입력
		if(user2 != null){
		result =1;
		
		user2.setePwd(pwd);
		
		
		}
		
		
		//일치하는 이메일 값이 있을 때 이메일을 발송함.
		if(result >= 1){
			final String user = "dbzmsquf1@gmail.com";
			final String password = "!asdf1234"; 

			Properties prop = new Properties(); 
			prop.put("mail.smtp.host", "smtp.gmail.com"); 
			prop.put("mail.smtp.port", 465); 
			prop.put("mail.smtp.auth", "true");
			prop.put("mail.smtp.ssl.enable", "true");
			prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
			
			
			//비밀번호 변경
			int result2 = eService.updatePwd(user2);
			
			Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(user, password);
	            }
	        });

	        try {
	            MimeMessage message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(user));

	            //수신자메일주소
	            message.addRecipient(Message.RecipientType.TO, new InternetAddress(main)); 

	            // Subject
	            message.setSubject("CSS에서 아이디 정보와 임시 비밀번호가 발송되었습니다."); //메일 제목을 입력

	            // Text
	            message.setText("접속 후 반드시 비밀번호를 변경하시기 바랍니다.\n\n 아이디 : "+user2.geteId()+"\n임시 비밀번호 : "+pwd+"\n");   
	            
	            
	            // send the message
	            Transport.send(message); ////전송
	            System.out.println("message sent successfully...");
	        } catch (AddressException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (MessagingException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
			
			
		}
		
		
		
		return result;
	}
	
	
	
	
	
	
	//사원등록 ,직급 부서 리스트 출력
	@RequestMapping("memberAdd.do")
	public ModelAndView memberAdd(ModelAndView mv, HttpSession session) {
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		 
	//세션값 없으면 로그인페이지
	 if(employee == null){
			mv.setViewName("index/login");
	 }else{
		List<EmployeeVo> list = eService.selectJobList(employee.getcKeyFk());
		List<EmployeeVo> list2 = eService.selectDepartList(employee.getcKeyFk());

		mv.addObject("list", list);
		mv.addObject("list2", list2);	 
		mv.setViewName("employee/employeeInsert");
	 }
		return mv;
		
	}
	
	
	
	
	
	

	// 사원 등록
	@RequestMapping("insertMember.do")
	public String memberJoin(@RequestParam("eBirth1") String eBirth1, @RequestParam("eHireDate1") String eHireDate1,
			HttpServletRequest request, @RequestParam("ePhoto1") MultipartFile ePhoto, EmployeeVo member,
			HttpSession session) {
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		int cKey = employee.getcKeyFk();
		
		System.out.println("부서키 = " + member.geteDepartFk());


		
		if(!eBirth1.equals("")){
		Date birth2 = Date.valueOf(eBirth1);
		member.seteBirth(birth2);
		}
		if(!eHireDate1.equals("")){
		Date hire2 = Date.valueOf(eHireDate1);
		member.seteHireDate(hire2);
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		java.util.Date dt = new java.util.Date();
		
		String root = request.getSession().getServletContext().getRealPath("resources");

		String path = root + "\\upload\\empPhoto";
		String filePath = "";

		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}
			
			filePath = folder + "\\" + sdf.format(dt) + ePhoto.getOriginalFilename();
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
			

			
		
		
		
		return "redirect:adminOrganizationChart.do";
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
	public ModelAndView employeeInfo(ModelAndView mv,HttpSession session, @RequestParam("eKey") int eKey){
		
		System.out.println(eKey);
		EmployeeVo employee = (EmployeeVo)session.getAttribute("user");
		List<EmployeeVo> list = eService.selectJobList(employee.getcKeyFk());
		List<EmployeeVo> list2 = eService.selectDepartList(employee.getcKeyFk());
		
		mv.addObject("list", list);
		mv.addObject("list2", list2);

		
		EmployeeVo select = eService.selectEmployeeInfo(eKey);
		
		
		if(select.getePhoto()==null){
			
			select.setePhoto("empty.png");
		}
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
		      //근속년수에 따른 총 휴가 값 가지고오기
			GivevacationVo giveVacation = vService.selectTotalVacation(user);
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
		      System.out.println(employee.geteKey());
		      System.out.println(user.geteKey());
		      if(result > 0 && employee.geteKey()==user.geteKey()){
//		    	  session.setAttribute("user", user);
		      }
			
		      
		      
		      //사원타입이 1일때 관리자 조직도, 2일때 사원조직도
		      String redirect ="";
		      if(employee.geteType().equals("1")){
		    	  redirect= "redirect:adminOrganizationChart.do";
		      }else if(employee.geteType().equals("2")){
		    	  redirect= "redirect:organizationChart.do";
		      }
		      
			
		return redirect;
		
		
	}
	
	//사원 삭제
	
	@RequestMapping("employeeDelete.do")
	public String employeeDelete(@RequestParam("eKey") int eKey){
		
		
		int result = eService.employeeDelete(eKey);

		
		return "redirect:adminOrganizationChart.do";
	}
	
	
	
	
	
	
	@RequestMapping("department.do")
	public ModelAndView department(ModelAndView mv, HttpSession session, String check) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		//세션값 없으면 로그인페이지
		 if(user == null){
				mv.setViewName("index/login");
		 }else{
		List<EmployeeVo> jobList = eService.selectJobList(user.getcKeyFk());
		List<EmployeeVo> departList = eService.selectDepartList(user.getcKeyFk());
		mv.addObject("check", check);
		mv.addObject("jobList", jobList);
		mv.addObject("departList", departList);
		mv.setViewName("employee/department");
		 }
		return mv;
	}

	// 부서,직급 insert
	@RequestMapping("insertDivision.do")
	public ModelAndView insertDivision(HttpSession session, String depart, String job, String departKey, String jobKey,
			String jlevel,String removeKeys,String check,ModelAndView mv) {
		
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		String[] departArr = depart.split(",");
		String[] jobArr = job.split(",");
		String[] departKeys = departKey.split(",");
 		String[] jobKeys = jobKey.split(",");
 		//String[] dlevels = dlevel.split(",");
		String[] jlevels = jlevel.split(",");
		String[] removes = removeKeys.split(",");
		
		for(String key:removes){
			if(!key.equals("")){
				eService.deleteDivision(Integer.parseInt(key));
			}
		}
		
		List<DivisionVo> divisionList = new ArrayList<DivisionVo>();
		if (!departArr[0].equals("")) {
			for (int i = 0; i <departArr.length; i++) {
				DivisionVo div = new DivisionVo();
				div.setcKeyFk(user.getcKeyFk());
				try {
					div.setDivKey(Integer.parseInt(departKeys[i]));
				} catch (ArrayIndexOutOfBoundsException e) {
				}
				// System.out.println(div.getDivKey()==0); true
				div.setDivType(1);
				div.setDivInfo(departArr[i]);
				//div.setDivInfolevel(Integer.parseInt(dlevels[i]));
				divisionList.add(div);
			}
		}
		//eService.insertDepartment(divisionList);
		//divisionList = new ArrayList<DivisionVo>();
		if (!jobArr[0].equals("")) {
			for (int i = 0; i <jobArr.length; i++) {
				DivisionVo div = new DivisionVo();
				div.setcKeyFk(user.getcKeyFk());
				try {
					div.setDivKey(Integer.parseInt(jobKeys[i]));
				} catch (ArrayIndexOutOfBoundsException e) {
				}
				div.setDivType(2);
				div.setDivInfo(jobArr[i]);
				div.setDivInfolevel(Integer.parseInt(jlevels[i]));
				divisionList.add(div);
			}
		}
		int result = eService.insertDivision(divisionList);
		System.out.println("result" + result);
		if(check.equals("check")){
			List<EmployeeVo> list = eService.selectJobList(user.getcKeyFk());
			List<EmployeeVo> list2 = eService.selectDepartList(user.getcKeyFk());

			mv.addObject("list", list);
			mv.addObject("list2", list2);
			 mv.setViewName("companyStartHome");
		}else{
			 mv.setViewName("redirect:department.do");
		}
		return mv;
	}

	@RequestMapping("jobGrade.do")
	public String jobGrade() {
		return "employee/jobGrade";
	}

	// 조직도 사원 정보 리스트 출력
	@RequestMapping("organizationChart.do")
	public ModelAndView employeeList(ModelAndView mv, HttpSession session) {

		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		//세션값 없으면 로그인페이지
		 if(employee == null){
				mv.setViewName("index/login");
		 }else{
			 
		int cKey = employee.getcKeyFk();

		List<EmployeeVo> list = eService.selectEmployeeList(cKey);
		mv.addObject("list", list);
		mv.setViewName("employee/organizationChart");
	}
		return mv;
	}
	
	
		// 관리자 조직도 사원 정보 리스트 출력 
		@RequestMapping("adminOrganizationChart.do")
		public ModelAndView adminOrganizationChart(ModelAndView mv, HttpSession session) {

			EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
			//세션값 없으면 로그인페이지
			 if(employee == null){
					mv.setViewName("index/login");
			 }else{
			int cKey = employee.getcKeyFk();

			List<EmployeeVo> list = eService.selectEmployeeList(cKey);
			mv.addObject("list", list);
			System.out.println(list);
			mv.setViewName("employee/adminOrganizationChart");
			 }
			return mv;
		}
	
	
	

	// select 사원 정보 리스트 출력
	@RequestMapping("organizationChart2.do")
	public @ResponseBody List<EmployeeVo> employeeList2(String main, HttpSession session) {

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
		

		int eKey;
		eKey = Integer.parseInt(main);

		EmployeeVo list = eService.selectEmployeeInfo(eKey);

		System.out.println(list);
		return list;
	}

	@RequestMapping("employeeIndex.do")
	public ModelAndView employeeIndex(ModelAndView mav,HttpSession session, CommuteCheckVo commute)throws ServletException, IOException {
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		//세션값 없으면 로그인페이지
		 if(user == null){
			 mav.setViewName("index/login");
		 }else{
			 
		InetAddress addr = null;
		addr = InetAddress.getLocalHost();
		String ipLocation = addr.getHostAddress();		
		
		String oneSelect = commservice.selectOneCommute(user);	
		mav.addObject("oneSelect", oneSelect);
		String outSelect = commservice.selectOutCommute(user);		
		mav.addObject("outSelect",outSelect);
		
		List<CalenderVo> list = cservice.showCalender(user);
		mav.addObject("list", list);

		List<BorderVo> board1 = borderservice.selectBoardOneEmp(); // 공지사항
		List<BorderVo> board2 = borderservice.selectBoardTwoEmp(); // 자유
		List<BorderVo> board3 = borderservice.selectBoardThrEmp(); // 경조사
		mav.addObject("board1", board1);
		mav.addObject("board2", board2);
		mav.addObject("board3", board3);
		mav.addObject("ipLocation",ipLocation);
		mav.addObject("user",user);
		
		mav.setViewName("employee/employeeIndex");
		 }
		return mav;
	}
	
	@RequestMapping("commuteone.do")
	public ModelAndView innerCommute(ModelAndView mav, HttpServletRequest request, HttpSession session)throws ServletException, IOException{
		
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		InetAddress addr = null;
		addr = InetAddress.getLocalHost();
		String ipLocation = addr.getHostAddress();
		mav.addObject("user",user);
		
		int point1 = ipLocation.indexOf(".");
		int point2 = ipLocation.indexOf(".", point1 + 1);
		if(ipLocation.substring(0, point1).equals("192") && ipLocation.substring(point1 + 1, point2).equals("168")){	
			int commute = commservice.innserCommute(user);	
			CommuteCheckVo cc = commservice.selectCommute(user);
			mav.addObject("commute",commute);
		}
		    String oneSelect = commservice.selectOneCommute(user);	
			mav.addObject("oneSelect", oneSelect);
			
			mav.setViewName("employee/employeeIndex");
		return mav;
	}
	
	@RequestMapping("commuteOut.do")
	public ModelAndView insertOutCommuteCheck(CommuteCheckVo commute, ModelAndView mav,HttpSession session){
		EmployeeVo user = (EmployeeVo)session.getAttribute("user");
		mav.addObject("user",user);
		
		int result = commservice.insertOutCommuteCheck(user);
		CommuteCheckVo cc= commservice.selectCommute(user);
		String outSelect = commservice.selectOutCommute(user);
		
		mav.addObject("outSelect",outSelect);
		System.out.println(outSelect);
		mav.addObject("commute",commute);
		mav.setViewName("employee/employeeIndex");
		return mav;
	}

	@RequestMapping("adminIndex.do")
	public ModelAndView adminIndex(ModelAndView mav, HttpSession session)throws ServletException, IOException {
		
		InetAddress addr = null;
		addr = InetAddress.getLocalHost();
		String ipLocation = addr.getHostAddress();
		mav.addObject("ipLocation",ipLocation);
		
		List<BorderVo> board1 = borderservice.selectBoardOneEmp(); // 공지사항
		mav.addObject("board1", board1);
		
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		//세션값 없으면 로그인페이지
		String oneSelect = commservice.selectOneCommute(employee);	
		mav.addObject("oneSelect", oneSelect);
		String outSelect = commservice.selectOutCommute(employee);		
		mav.addObject("outSelect",outSelect);
		 if(employee == null){
			 mav.setViewName("index/login");
		 }else{
		
		int cKey = employee.getcKeyFk();
		
		List<EmployeeVo> todayBList = eService.selectTodayBList(cKey);
		mav.addObject("todayBList",todayBList);

		List<EmployeeVo> departCountList = eService.selectDepartCountList(cKey);
		mav.addObject("departCountList",departCountList);
		
		CompanyVo indexCompany = companyService.selectCompanyInfo(cKey);
		int employeeTotal = eService.selectEmployeeTotal(cKey);
		indexCompany.setCounts(employeeTotal);
		mav.addObject("indexCompany", indexCompany);
		
		mav.setViewName("employee/adminIndex");
		 }
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
	public ModelAndView memberJoin2(@RequestParam("eBirth1") String eBirth1, @RequestParam("eHireDate1") String eHireDate1,
			HttpServletRequest request, @RequestParam("ePhoto1") MultipartFile ePhoto, EmployeeVo member,
			HttpSession session, @RequestParam("flag") String flag, ModelAndView mv) {
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
			
		List<EmployeeVo> list = eService.selectJobList(employee.getcKeyFk());
		List<EmployeeVo> list2 = eService.selectDepartList(employee.getcKeyFk());

		mv.addObject("list", list);
		mv.addObject("list2", list2);
		
			view ="companyStartHome";
		}else{
			view ="redirect:companyPayment.do?cKeyFk="+cKey;
		}
		mv.setViewName(view);
		return mv;
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
	

		
		
		
		
		//사원 마이페이지 수정
		@RequestMapping("myPageUpdate.do")
		public ModelAndView myPageUpdate(ModelAndView mv,HttpSession session){
			
			EmployeeVo employee = (EmployeeVo)session.getAttribute("user");
			List<EmployeeVo> list = eService.selectJobList(employee.getcKeyFk());
			List<EmployeeVo> list2 = eService.selectDepartList(employee.getcKeyFk());
			
			mv.addObject("list", list);
			mv.addObject("list2", list2);
			
			
			int eKey= employee.geteKey();
			
			EmployeeVo select = eService.selectEmployeeInfo(eKey);
			
			
//			if(select.getePhoto()==null){
//				
//				select.setePhoto("empty.png");
//			}
			
			mv.addObject("select", select);
			mv.setViewName("employee/myPageUpdate");
			return mv;
			
	}

}
