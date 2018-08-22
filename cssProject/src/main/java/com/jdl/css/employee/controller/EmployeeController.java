
package com.jdl.css.employee.controller;
import java.io.File;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.border.model.service.BorderService;
import com.jdl.css.border.model.vo.BorderVo;
import com.jdl.css.calender.model.service.CalenderService;
import com.jdl.css.calender.model.vo.CalenderVo;
import com.jdl.css.common.model.service.AttachmentService;
import com.jdl.css.common.model.service.VacationService;
import com.jdl.css.common.model.vo.AttachmentVo;
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

	@RequestMapping("loginForm.do")
	public String openLoginForm() {
		return "index/login";
	}

	@RequestMapping("login.do")
	public ModelAndView login(EmployeeVo employee,HttpSession session, ModelAndView mv){
		EmployeeVo user = eService.selectEmployeeById(employee.geteId());
		List<NoteVo> indexNote = nService.selectIndexNote(user.geteKey());
		
		//근속년수에 따른 총 휴가 값 가지고오기
		VacationVo giveVacation = vService.selectTotalVacation(user);
		//휴가 사용일 가져오기
		List<VacationVo> usedVacation = vService.selectUsedVacation(user);
		System.out.println(giveVacation);
		System.out.println(usedVacation);
		System.out.println(user);
		int totalUsedVacation = 0;
		for(VacationVo vacation : usedVacation){
			totalUsedVacation += vacation.getvUseddate();
		}
		try{
		user.setTotalVacation(giveVacation.getGvVacadate());
		user.setRemainingVacation(giveVacation.getGvVacadate()-totalUsedVacation);
		}catch (NullPointerException e) {
			// TODO: handle exception
		}
		
		if(user == null){
			System.out.println("아이디 오류");
		}else if(user.getePwd().equals(employee.getePwd())){
			session.setAttribute("user", user);
			session.setAttribute("indexNote", indexNote);
		}else{
			System.out.println("비밀번호 오류");
		}
		
		mv.setViewName("redirect:index.do");
		return mv;
	}

	@RequestMapping("memberAdd.do")

	public ModelAndView memberAdd(ModelAndView mv, HttpSession session) {
		EmployeeVo employee = (EmployeeVo) session.getAttribute("user");
		List<EmployeeVo> list = eService.selectJobList(employee.getcKeyFk());
		List<EmployeeVo> list2 = eService.selectDepartList(employee.getcKeyFk());

		mv.addObject("list", list);
		mv.addObject("list2", list2);
		mv.setViewName("employee/memberAdd");
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
		System.out.println(member);

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
		System.out.println(list);

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
	public ModelAndView employeeIndex(ModelAndView mav) {
		List<CalenderVo> list = cservice.showCalender();
		mav.addObject("list", list);

		List<BorderVo> board1 = borderservice.selectBoardOneEmp(); // 공지사항
		List<BorderVo> board2 = borderservice.selectBoardTwoEmp(); // 자유
		List<BorderVo> board3 = borderservice.selectBoardThrEmp(); // 경조사
		mav.addObject("board1", board1);
		mav.addObject("board2", board2);
		mav.addObject("board3", board3);

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

}
