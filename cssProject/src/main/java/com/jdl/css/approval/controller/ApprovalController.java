package com.jdl.css.approval.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
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
import com.jdl.css.approval.model.vo.OrderTableLinkedVo;
import com.jdl.css.approval.model.vo.VacationFormVo;
import com.jdl.css.calender.model.service.CalenderService;
import com.jdl.css.calender.model.vo.CalenderVo;
import com.jdl.css.common.model.service.AttachmentService;
import com.jdl.css.common.model.service.VacationService;
import com.jdl.css.common.model.vo.AttachmentVo;
import com.jdl.css.common.model.vo.VacationVo;
import com.jdl.css.employee.model.service.EmployeeService;
import com.jdl.css.employee.model.vo.EmployeeVo;
import com.jdl.css.givevacation.model.vo.GivevacationVo;
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
	@Autowired
	VacationService vService;
	@Autowired
	CalenderService cService;

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

	@RequestMapping("setApprovalSystemPage.do")
	public ModelAndView setApprovalSystemPage(HttpSession session, ModelAndView mv) {
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
		mv.addObject("employee", employee);
		mv.addObject("department", department);

		int[] key = new int[1];
		key[0] = user.geteInstead();
		List<EmployeeVo> instead = eService.selectEmployeeListByKeyStr(key);
		if(instead.size()!=0){
		mv.addObject("instead", instead.get(0));
		}
		mv.setViewName("approval/approvalSystemPage");
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

		order.setaKeyFk(app.getaKey());
		int addOrderFormResult = aService.insertOrderForm(order);
		// System.out.println("addOrderFormResult / "+addOrderFormResult);

		List<OrderTableLinkedVo> otlList = new ArrayList<OrderTableLinkedVo>();
		String[] olCulnos = olCulno.split(",");
		String[] olProducts = olProduct.split(",");
		String[] olSizes = olSize.split(",");
		String[] olUnions = olUnion.split(",");
		String[] olProductcounts = olProductcount.split(",");
		String[] olOrizinprices = olOrizinprice.split(",");
		String[] olPrices = olPrice.split(",");
		String[] olEtcs = olEtc.split(",");
		for (int i = 0; i < olProducts.length; i++) {
			OrderTableLinkedVo otl = new OrderTableLinkedVo(app.getaKey(), Integer.parseInt(olCulnos[i]), olProducts[i],
					olSizes[i], olUnions[i], Integer.parseInt(olProductcounts[i]), Integer.parseInt(olOrizinprices[i]),
					Integer.parseInt(olPrices[i]), olEtcs[i]);
			otlList.add(otl);
		}

		int addOrderLinkedResult = aService.insertOrderLinked(otlList);
		// System.out.println("addOrderLinkedResult / "+addOrderLinkedResult);

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

		return "redirect:openOrderFormDetail.do?aKey=" + app.getaKey();
	}

	@RequestMapping("writeVacation.do")
	public String writeVacation(ApprovalVo app, VacationFormVo vForm, @RequestParam("appStr") List<Integer> appStr,
			@RequestParam("insteads") List<Integer> insteads, @RequestParam("files") MultipartFile[] files,
			HttpSession session, HttpServletRequest request) {
			System.out.println("와따");
		app.setaWriterFk(((EmployeeVo) session.getAttribute("user")).geteKey());
		app.setcKeyFk(((EmployeeVo) session.getAttribute("user")).getcKeyFk());
		app.setDivDoctypeFk(5);
		
		aService.insertApproval(app);
		System.out.println("app : " + app);

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

		aService.insertApprovers(acList);
		// System.out.println(addAppResult);

		int vfHalfflag = Integer.parseInt(request.getParameter("vfHalfflag"));
		vForm.setVfHalfflag(vfHalfflag);
		vForm.setaKeyFk(app.getaKey());
		System.out.println("vfHalf : " + vForm.getVfHalfflag());
		System.out.println("aKeyFk : " + vForm.getaKeyFk());
		System.out.println("vForm : " + vForm);
		aService.insertVacation(vForm);

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
				filePath = folder + "\\" + file.getOriginalFilename();

				try {
					file.transferTo(new File(filePath));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}

				attach.setAttaFileName(file.getOriginalFilename());
				attach.setAttaFilePath("approval");
				attach.setAttaLocation(app.getaKey());
				attachList.add(attach);
			}
		}

		// System.out.println(attachList);

		attService.insertAttachments(attachList);
		// System.out.println(attachResult);
	return "redirect:openVacationFormDetail.do?aKey=" + app.getaKey();
	}

	// 문서디테일열람

	@RequestMapping("openJobPropsalDetail.do")
	public ModelAndView openJobPropsalDetail(ModelAndView mv, ApprovalVo a) {
		a = aService.selectApprovalDetail(a);
		JobPropsalVo jp = aService.selectJobPropsal(a.getaKey());
		ApprovalConditionVo cApprover = aService.selectCurrentApprover(a.getaKey());
		ApprovalConditionVo last = aService.selectLastApprover(a.getaKey());
		mv.addObject("approval", a);
		mv.addObject("cApprover", cApprover);
		mv.addObject("jp", jp);
		mv.addObject("lApprover", last);
		mv.setViewName("approval/approvalForm/jobPropsalDetail");
		return mv;
	}

	@RequestMapping("openVacationFormDetail.do")
	public ModelAndView openVacationFormDetail(ModelAndView mv, ApprovalVo a) {
		a = aService.selectApprovalDetail(a);
		// 아래부분 다 수정해야함
		// JobPropsalVo jp = aService.selectJobPropsal(a.getaKey());
		System.out.println("vf aKey : " + a.getaKey());
		VacationFormVo vf = aService.selectVacationForm(a.getaKey());
		ApprovalConditionVo cApprover = aService.selectCurrentApprover(a.getaKey());
		ApprovalConditionVo last = aService.selectLastApprover(a.getaKey());
		mv.addObject("approval", a);
		mv.addObject("cApprover", cApprover);
		mv.addObject("vf", vf);
		mv.addObject("lApprover", last);
		System.out.println("vf : " + vf);
		mv.setViewName("approval/approvalForm/vacationFormDetail");
		return mv;
	}

	@RequestMapping("openOrderFormDetail.do")
	public ModelAndView openOrderFormDetail(ModelAndView mv, ApprovalVo a) {
		a = aService.selectApprovalDetail(a);
		OrderFormVo of = aService.selectOrderForm(a.getaKey());
		List<OrderTableLinkedVo> otlList = aService.selectOrderLinked(a.getaKey());
		ApprovalConditionVo cApprover = aService.selectCurrentApprover(a.getaKey());
		ApprovalConditionVo last = aService.selectLastApprover(a.getaKey());


		mv.addObject("approval", a);
		mv.addObject("cApprover", cApprover);
		mv.addObject("of", of);
		mv.addObject("otlList", otlList);
		mv.addObject("lApprover", last);
		mv.setViewName("approval/approvalForm/orderFormDetail");
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
			result = "redirect:openOrderFormDetail.do?aKey=" + aKey;
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
		
		ApprovalConditionVo last = aService.selectLastApprover(aKey);

		if (last.getAcKey() == acKey || condition == 2) {
			updateAResult = aService.updateApproval(app);
		}
		if(doctype==5){
			updateVacation(app);
			if(updateVacation(app) >0){
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
			      session.setAttribute("user", user);
			}
		}
		return result;
	}
	
	public int updateVacation(ApprovalVo a){
		int result=0;
		a = aService.selectApprovalDetail(a);
		VacationFormVo vacation = aService.selectVacationForm(a.getaKey());
		if(a.getaCondition()==1){
			VacationVo v = new VacationVo();
			v.setcKeyFk(a.getcKeyFk());
			v.seteKeyFk(a.getaWriterFk());
			v.setvStartdate(vacation.getVfStartdate());
			v.setvRecalldate(vacation.getVfEnddate());
			v.setvUseddate(vacation.getvfUseddate());
			result+=vService.insertVacation(v);
			
			CalenderVo vCal = new CalenderVo();
			String title = a.getWriter().geteName()+" "+a.getWriter().getJob()+"님 휴가";
			vCal.setcKeyFk(a.getcKeyFk());
			vCal.setTitle(title);
			vCal.setStartDate(Date.valueOf(vacation.getVfStartdate()));
			vCal.setEndDate(Date.valueOf(vacation.getVfEnddate()));
			vCal.setBackground("#F56954");
			result+=cService.createEvent(vCal);			
		}
		return result;
	}
	
	@RequestMapping("updateInstead.do")
	public String updateInstead(HttpSession session,int iKey){
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		user.seteInstead(iKey);
		int result = eService.updateInstead(user);
		return "redirect:setApprovalSystemPage.do";
	}
	
}
