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

import com.jdl.css.approval.model.service.ApprovalService;
import com.jdl.css.approval.model.vo.ApprovalVo;
import com.jdl.css.approval.model.vo.JobPropsalVo;
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

	@RequestMapping("jobPropsalPage.do")
	public String openJobPropsalPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK=user.getcKeyFk();

		List<EmployeeVo> employee = nService.selectEmployee(companyK);
		List<EmployeeVo> department = nService.selectDepartment(companyK);

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/jobPropsal";
	}

	@RequestMapping("vacationFormPage.do")
	public String openVacationFormPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK=user.getcKeyFk();

		List<EmployeeVo> employee = nService.selectEmployee(companyK);
		List<EmployeeVo> department = nService.selectDepartment(companyK);

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/vacationForm";
	}

	@RequestMapping("roundRobinPage.do")
	public String openRoundRobinPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK=user.getcKeyFk();

		List<EmployeeVo> employee = nService.selectEmployee(companyK);
		List<EmployeeVo> department = nService.selectDepartment(companyK);

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/roundRobin";
	}

	@RequestMapping("spendingResolutionPage.do")
	public String openspendingResolutionPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK=user.getcKeyFk();

		List<EmployeeVo> employee = nService.selectEmployee(companyK);
		List<EmployeeVo> department = nService.selectDepartment(companyK);

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/spendingResolution";
	}

	@RequestMapping("orderFormPage.do")
	public String openOrderFormPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		int companyK=user.getcKeyFk();

		List<EmployeeVo> employee = nService.selectEmployee(companyK);
		List<EmployeeVo> department = nService.selectDepartment(companyK);

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);
		return "approval/approvalForm/orderForm";
	}

	@RequestMapping("openSelectApproverPage.do")
	public String openSelectApproverPage(HttpSession session, Model model) {
		EmployeeVo user = (EmployeeVo) session.getAttribute("user");
		// 회사키
		// int companyK=user.getcKeyFk();
		int companyK = 1;
		// System.out.println("회사키 = "+ companyK);

		List<EmployeeVo> employee = nService.selectEmployee(companyK);
		List<EmployeeVo> department = nService.selectDepartment(companyK);
		// System.out.println(department);
		// System.out.println(employee);

		model.addAttribute("employee", employee);
		model.addAttribute("department", department);

		return "approval/selectApproverPage";
	}
	
	@RequestMapping("addApproversTable.do")
	public @ResponseBody List<EmployeeVo> addApproversTable(String appStr){
		//System.out.println(appStr);
		String[] appArr = appStr.split(", ");
		int[] appKeyArr = new int[appArr.length];
		for(int i=0;i<appKeyArr.length;i++){
			appKeyArr[i] = Integer.parseInt(appArr[i]);
		}
		return eService.selectEmployeeListByKeyStr(appKeyArr);
	}

	@RequestMapping("writeJobPropsal.do")
	public String writeJobPropsal(ApprovalVo app, JobPropsalVo jobp, @RequestParam("appStr") List<Integer> appStr,
			@RequestParam("files") MultipartFile[] files, HttpSession session, HttpServletRequest request) {
		app.setaWriterFk(((EmployeeVo) session.getAttribute("user")).geteKey());
		app.setcKeyFk(((EmployeeVo) session.getAttribute("user")).getcKeyFk());
		app.setDivDoctypeFk(1);
		// Date jpWorkingDate = Date.valueOf(workingDate);
		// jobp.setJpWorkingDate(jpWorkingDate);
	/*	System.out.println(appStr);
		System.out.println(app);
		System.out.println(jobp);*/

		int addAResult = aService.insertApproval(app);
		// System.out.println("aKey : "+app.getaKey());

		int addAppResult = aService.insertApprovers(app.getaKey(), appStr);
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
	         attach.setAttaFilePath(path+"\\");
	         attach.setAttaLocation(app.getaKey());
	         attachList.add(attach);
		}
		
		//System.out.println(attachList);
		
			int attachResult = attService.insertAttachments(attachList);
			//System.out.println(attachResult);
		return null;

	}
}
