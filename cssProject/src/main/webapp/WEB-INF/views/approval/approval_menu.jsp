<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">

		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">

			<!-- Sidebar user panel (optional) -->
			<div class="user-panel">
	        <div class="pull-left image">
	          <img src="resources/upload/empPhoto/${sessionScope.user.ePhoto}" class="img-circle" alt="User Image">
	        </div>
	        <div class="pull-left info">
	          <p><c:out value="${sessionScope.user.eName} ${sessionScope.user.job}"/></p>
	          <!-- Status -->
	          <a href="#"><i class="fa fa-circle text-success"></i> <c:out value="${sessionScope.user.department}"/></a>
	        </div>
	      </div>

			

			<!-- Sidebar Menu -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">새 결재 진행</li>
				<!-- Optionally, you can add icons to the links -->
				<li class="treeview"><a href="#"><i class="fa  fa-file-text-o"></i>
						<span>결재문서양식</span> <span class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span> </a>
					<ul class="treeview-menu">
						<li><a href="jobPropsalPage.do">업무기안</a></li>
						<li><a href="orderFormPage.do">발주서</a></li>
						<!-- <li><a href="spendingResolutionPage.do">지출결의서</a></li>
						<li><a href="roundRobinPage.do">품의서</a></li> -->
						<li><a href="vacationFormPage.do">휴가계</a></li>
					</ul></li>
				<li class="header">결재하기</li>
				<li><a href="waitingPage.do"><i class="fa fa-check-square-o"></i> <span>결재대기</span></a></li>
				<li><a href="expectedPage.do"><i class="fa  fa-spinner"></i> <span>결재예정</span></a></li>
				<li class="header">결재문서함</li>
				<li><a href="draftedPage.do"><i class="fa fa-mail-forward"></i> <span>기안문서함</span></a></li>
				<li><a href="receivedPage.do"><i class="fa fa-mail-reply"></i> <span>결재문서함</span></a></li>
				<li class="header">결재환경설정</li>
				<li><a href="setApprovalSystemPage.do"><i class="fa fa-user"></i> <span>대결자설정</span></a></li>
			</ul>
			<!-- /.sidebar-menu -->
		</section>
		<!-- /.sidebar -->
	</aside>

</body>
</html>