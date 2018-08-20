package com.jdl.css.approval.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jdl.css.approval.model.service.ApprovalService;
import com.jdl.css.approval.model.vo.ApprovalConditionVo;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.approval.model.vo.JobPropsalVo;
import com.jdl.css.approval.model.vo.OrderFormVo;
import com.jdl.css.common.model.service.AttachmentService;
import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.employee.model.service.EmployeeService;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.note.model.service.NoteService;

@Controller
public class ApprovalController {

	@Autowired
	ApprovalService aService;
	@Autowired
	NoteService nService;
	@Autowired
	AttachmentService attService;
	@Autowired
	EmployeeService eService;

	@RequestMapping("approvalPage.do")
	public String openApprovalPage() {
		return "approval/approvalPage";
	}

	// 좌측메뉴

	@RequestMapping("draftedPage.do")
	public ModelAndView openDraftedPage(HttpSession session, ModelAndView mv) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		List<ApprovalVo> allList = aService.selectDraftApprovalAllList(user.geteKey());
		List<ApprovalVo> ingList = aService.selectDraftApprovalIngList(user.geteKey());
		List<ApprovalVo> complList = aService.selectDraftApprovalComplList(user.geteKey());
		List<ApprovalVo> compaList = aService.selectDraftApprovalCompaList(user.geteKey());
		mv.addObject("allList", allList);
		mv.addObject("ingList", ingList);
		mv.addObject("complList", complList);
		mv.addObject("compaList", compaList);
		mv.setViewName("approval/draftedPage");
		return mv;
	}

	@RequestMapping("receivedPage.do")
	public ModelAndView openReceivedPage(HttpSession session, ModelAndView mv) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		List<ApprovalVo> allList = aService.selectReceivedApprovalAllList(user.geteKey());
		List<ApprovalVo> ingList = aService.selectReceivedApprovalIngList(user.geteKey());
		List<ApprovalVo> complList = aService.selectReceivedApprovalComplList(user.geteKey());
		List<ApprovalVo> compaList = aService.selectReceivedApprovalCompaList(user.geteKey());
		mv.addObject("allList", allList);
		mv.addObject("ingList", ingList);
		mv.addObject("complList", complList);
		mv.addObject("compaList", compaList);
		mv.setViewName("approval/receivedPage");
		return mv;
	}

	@RequestMapping("waitingPage.do")
	public ModelAndView openWaitingPage(HttpSession session, ModelAndView mv) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// System.out.println(user);
		List<ApprovalVo> waitingList = aService.selectWaitingApprovalList(user.geteKey());
		// System.out.println(waitingList);
		mv.addObject("waitingList", waitingList);
		mv.setViewName("approval/waitingPage");
		return mv;
	}

	@RequestMapping("expectedPage.do")
	public ModelAndView openExpectedPage(HttpSession session, ModelAndView mv) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		List<ApprovalVo> expectedList = aService.selectExpectedApprovalList(user.geteKey());
		mv.addObject("expectedList", expectedList);
		mv.setViewName("approval/expectedPage");
		return mv;
	}

	// 문서작성폼이동

	@RequestMapping("jobPropsalPage.do")
	public String openJobPropsalPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK = user.getcKeyFk();

		List<EmployeeVo> employee = eService.selectEmployeeList(companyK);
		List<EmployeeVo> department = eService.selectDepartList(companyK);
		for (EmployeeVo e : employee) {
			if (e.getInstead() == null) {
				e.setInstead(new EmployeeVo());
				e.getInstead().seteKey(-1);
			}
		}

		// System.out.println(employee);
		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/jobPropsal";
	}

	@RequestMapping("vacationFormPage.do")
	public String openVacationFormPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK = user.getcKeyFk();

		List<EmployeeVo> employee = eService.selectEmployeeList(companyK);
		List<EmployeeVo> department = eService.selectDepartList(companyK);
		for (EmployeeVo e : employee) {
			if (e.getInstead() == null) {
				e.setInstead(new EmployeeVo());
				e.getInstead().seteKey(-1);
			}
		}

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/vacationForm";
	}

	@RequestMapping("roundRobinPage.do")
	public String openRoundRobinPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK = user.getcKeyFk();

		List<EmployeeVo> employee = eService.selectEmployeeList(companyK);
		List<EmployeeVo> department = eService.selectDepartList(companyK);
		for (EmployeeVo e : employee) {
			if (e.getInstead() == null) {
				e.setInstead(new EmployeeVo());
				e.getInstead().seteKey(-1);
			}
		}

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/roundRobin";
	}

	@RequestMapping("spendingResolutionPage.do")
	public String openspendingResolutionPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK = user.getcKeyFk();

		List<EmployeeVo> employee = eService.selectEmployeeList(companyK);
		List<EmployeeVo> department = eService.selectDepartList(companyK);
		for (EmployeeVo e : employee) {
			if (e.getInstead() == null) {
				e.setInstead(new EmployeeVo());
				e.getInstead().seteKey(-1);
			}
		}

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/spendingResolution";
	}

	@RequestMapping("orderFormPage.do")
	public String openOrderFormPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK = user.getcKeyFk();

		List<EmployeeVo> employee = eService.selectEmployeeList(companyK);
		List<EmployeeVo> department = eService.selectDepartList(companyK);
		for (EmployeeVo e : employee) {
			if (e.getInstead() == null) {
				e.setInstead(new EmployeeVo());
				e.getInstead().seteKey(-1);
			}
		}

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/orderForm";
	}

	/*
	 * @RequestMapping("openSelectApproverPage.do") public String
	 * openSelectApproverPage(HttpSession session, Model model) { EmployeeVo
	 * user = (EmployeeVo) session.getAttribute("user"); // 회사키 // int
	 * companyK=user.getcKeyFk(); int companyK = 1; //
	 * System.out.println("회사키 = "+ companyK);
	 * 
	 * List<EmployeeVo> employee = nService.selectEmployee(companyK);
	 * List<EmployeeVo> department = nService.selectDepartment(companyK);
	 * System.out.println(department); System.out.println(employee);
	 * 
	 * //model.addAttribute("employee", employee);
	 * //model.addAttribute("department", department);
	 * 
	 * return "approval/selectApproverPage"; }
	 */

	// 결재자칸 추가
	@RequestMapping("addApproversTable.do")
	public @ResponseBody List<EmployeeVo> addApproversTable(String appStr) {
		// System.out.println(appStr);
		String[] appArr = appStr.split(", ");
		int[] appKeyArr = new int[appArr.length];
		for (int i = 0; i < appKeyArr.length; i++) {
			appKeyArr[i] = Integer.parseInt(appArr[i]);
		}
		return eService.selectEmployeeListByKeyStr(appKeyArr);
	}

	// 문서작성

	@RequestMapping("writeJobPropsal.do")
	public String writeJobPropsal(ApprovalVo app, JobPropsalVo jobp, @RequestParam("appStr") List<Integer> appStr,
			@RequestParam("insteads") List<Integer> insteads, @RequestParam("files") MultipartFile[] files,
			HttpSession session, HttpServletRequest request) {

		app.setaWriterFk(((EmployeeVo) session.getAttribute("user")).geteKey());
		app.setcKeyFk(((EmployeeVo) session.getAttribute("user")).getcKeyFk());
		app.setDivDoctypeFk(1);

		// Date jpWorkingDate = Date.valueOf(workingDate);
		// jobp.setJpWorkingDate(jpWorkingDate);
		/*
		 * System.out.println(appStr); System.out.println(app);
		 * System.out.println(jobp);
		 */

		int addAResult = aService.insertApproval(app);
		// System.out.println("aKey : "+app.getaKey());

		List<ApprovalConditionVo> acList = new ArrayList<ApprovalConditionVo>();
		for (int i = 0; i < appStr.size(); i++) {
			ApprovalConditionVo ac = new ApprovalConditionVo();
			ac.setaKeyFk(app.getaKey());
			ac.setAcApproverFk(appStr.get(i));
			acList.add(ac);
		}
		for (int i = 0; i < insteads.size(); i++) {
			ApprovalConditionVo ac = new ApprovalConditionVo();
			ac.setaKeyFk(app.getaKey());
			ac.setAcApproverFk(insteads.get(i));
			ac.setAcApprovalType("5");
			acList.add(ac);
		}

		int addAppResult = aService.insertApprovers(acList);
		// System.out.println(addAppResult);

		jobp.setaKeyFk(app.getaKey());
		int addJobPropsalResult = aService.insertJobPropsal(jobp);

		List<AttachmentVo> attachList = new ArrayList<AttachmentVo>();

		String root = request.getSession().getServletContext().getRealPath("resources");

		String path = root + "\\upload\\approval"; // spring에서는 경로가 '/'아니라 '\\'로
													// 경로를 나타냄
		String filePath = "";

		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		MultipartFile file = null;
		for (int i = 0; i < files.length; i++) {
			if (!files[i].getOriginalFilename().equals("")) {
				AttachmentVo attach = new AttachmentVo();
				file = files[i];
				// System.out.println("files.length : " + files.length);
				// System.out.println(file.getOriginalFilename());
				// System.out.println("folder : " + folder);
				filePath = folder + "\\" + file.getOriginalFilename();

				// System.out.println("filePath : " + filePath);
				try {
					file.transferTo(new File(filePath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}

				// System.out.println("file 명 = "+file.getOriginalFilename());
				attach.setAttaFileName(file.getOriginalFilename());
				attach.setAttaFilePath("approval");
				attach.setAttaLocation(app.getaKey());
				attachList.add(attach);
			}
		}

		// System.out.println(attachList);

		int attachResult = attService.insertAttachments(attachList);
		// System.out.println(attachResult);
		return "redirect:openJobPropsalDetail.do?aKey=" + app.getaKey();
	}

	@RequestMapping("writeOrderForm.do")
	public String writeOrderForm(ApprovalVo app, OrderFormVo order, @RequestParam("appStr") List<Integer> appStr,
			@RequestParam("insteads") List<Integer> insteads, @RequestParam("files") MultipartFile[] files,
			String olCulno, String olProduct, String olSize, String olUnion, String olProductcount,
			String olOrizinprice, String olPrice, String olEtc, HttpSession session, HttpServletRequest request) {

		app.setaWriterFk(((EmployeeVo) session.getAttribute("user")).geteKey());
		app.setcKeyFk(((EmployeeVo) session.getAttribute("user")).getcKeyFk());
		app.setDivDoctypeFk(2);

		System.out.println("app / " + app);
		System.out.println("order / " + order);

		//int addAResult = aService.insertApproval(app);
		// System.out.println("aKey : "+app.getaKey());

		List<ApprovalConditionVo> acList = new ArrayList<ApprovalConditionVo>();
		for (int i = 0; i < appStr.size(); i++) {
			ApprovalConditionVo ac = new ApprovalConditionVo();
			ac.setaKeyFk(app.getaKey());
			ac.setAcApproverFk(appStr.get(i));
			acList.add(ac);
		}
		for (int i = 0; i < insteads.size(); i++) {
			ApprovalConditionVo ac = new ApprovalConditionVo();
			ac.setaKeyFk(app.getaKey());
			ac.setAcApproverFk(insteads.get(i));
			ac.setAcApprovalType("5");
			acList.add(ac);
		}

		//int addAppResult = aService.insertApprovers(acList);
		// System.out.println(addAppResult);

		order.setaKeyFk(app.getaKey());
		//int addOrderFormResult = aService.insertOrderForm(order);
		
		
		
		
		String[] arr = olCulno.split(",");
		System.out.println("olProduct" + arr.length);

		
		
		
		
		List<AttachmentVo> attachList = new ArrayList<AttachmentVo>();

		String root = request.getSession().getServletContext().getRealPath("resources");

		String path = root + "\\upload\\approval"; // spring에서는 경로가 '/'아니라 '\\'로
													// 경로를 나타냄
		String filePath = "";

		File folder = new File(path);
		if (!folder.exists()) {
			folder.mkdirs();
		}
		MultipartFile file = null;
		for (int i = 0; i < files.length; i++) {
			if (!files[i].getOriginalFilename().equals("")) {
				AttachmentVo attach = new AttachmentVo();
				file = files[i];
				// System.out.println("files.length : " + files.length);
				// System.out.println(file.getOriginalFilename());
				// System.out.println("folder : " + folder);
				filePath = folder + "\\" + file.getOriginalFilename();

				// System.out.println("filePath : " + filePath);
				try {
					file.transferTo(new File(filePath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}

				// System.out.println("file 명 = "+file.getOriginalFilename());
				attach.setAttaFileName(file.getOriginalFilename());
				attach.setAttaFilePath("approval");
				attach.setAttaLocation(app.getaKey());
				attachList.add(attach);
			}
		}

		// System.out.println(attachList);

		int attachResult = attService.insertAttachments(attachList);
		// System.out.println(attachResult);

		return "approval/approvalPage";
	}

	// 문서디테일열람

	@RequestMapping("openJobPropsalDetail.do")
	public ModelAndView openJobPropsalDetail(ModelAndView mv, ApprovalVo a) {
		a = aService.selectApprovalDetail(a);
		JobPropsalVo jp = aService.selectJobPropsal(a.getaKey());
		ApprovalConditionVo cApprover = aService.selectCurrentApprover(a.getaKey());
		mv.addObject("approval", a);
		mv.addObject("cApprover", cApprover);
		mv.addObject("jp", jp);
		mv.setViewName("approval/approvalForm/jobPropsalDetail");
		return mv;
	}

	// 결재하기
	@RequestMapping("updateApprovalCondition.do")
	public String updateApprovalCondition(HttpSession session, int doctype, int aKey, int acKey, String approvalType,
			int condition) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");

		String result = "";
		switch (doctype) {
		case 1:
			result = "redirect:openJobPropsalDetail.do?aKey=" + aKey;
			break;
		case 2:
			result = "redirect:openJobPropsalDetail.do?aKey=" + aKey;
			break;
		case 3:
			result = "redirect:openJobPropsalDetail.do?aKey=" + aKey;
			break;
		case 4:
			result = "redirect:openJobPropsalDetail.do?aKey=" + aKey;
			break;
		case 5:
			result = "redirect:openJobPropsalDetail.do?aKey=" + aKey;
			break;
		}

		ApprovalConditionVo last = aService.selectLastApprover(aKey);

		ApprovalConditionVo ac = new ApprovalConditionVo();
		ac.setAcKey(acKey);
		ac.setAcCondition(condition);
		ac.setAcApprovalType(approvalType);

		int updateAcResult = aService.updateApprovalCondition(ac);
		// System.out.println(updateAcResult);

		ApprovalVo app = new ApprovalVo();
		app.setaKey(aKey);
		app.setaCondition(condition);

		int updateAResult = -1;
		List<ApprovalConditionVo> ingAcList = aService.selectIngAcList(aKey);
		if (approvalType != null) {
			String[] arr = approvalType.split(",");
			for (int i = 0; i < arr.length; i++) {
				if (arr[i].equals("3")) {// 전결일때
					updateAResult = aService.updateApproval(app);
					for (int j = 0; j < ingAcList.size(); j++) {
						ingAcList.get(j).setAcCondition(-1);
						ingAcList.get(j).setAcApprovalType("-1");
						updateAcResult = aService.updateApprovalCondition(ingAcList.get(j));
					}
				} else if (arr[i].equals("4")) {// 선결일때
					for (int j = 0; j < ingAcList.size(); j++) {
						if (user.getDivInfolevel() < ingAcList.get(j).getApprover().getDivInfolevel()) {
							ingAcList.get(j).setAcCondition(-1);
							ingAcList.get(j).setAcApprovalType("-1");
							updateAcResult = aService.updateApprovalCondition(ingAcList.get(j));
						}
					}
				}
			}
		}

		if (last.getAcKey() == acKey || condition == 2) {
			updateAResult = aService.updateApproval(app);
		}
		return result;
	}
}
