<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<img src="resources/dist/img/user2-160x160.jpg" class="img-circle"
						alt="User Image">
				</div>
				<div class="pull-left info">
					<p>Alexander Pierce</p>
					<!-- Status -->
					<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
				</div>
			</div>

			<!-- search form (Optional) -->
			<form action="#" method="get" class="sidebar-form">
				<div class="input-group">
					<input type="text" name="q" class="form-control"
						placeholder="Search..."> <span class="input-group-btn">
						<button type="submit" name="search" id="search-btn"
							class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>
			<!-- /.search form -->

			<!-- Sidebar Menu -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">새 결재 진행</li>
				<!-- Optionally, you can add icons to the links -->
				<li class="treeview"><a href="#"><i class="fa fa-link"></i>
						<span>결재문서양식</span> <span class="pull-right-container"> <i
							class="fa fa-angle-left pull-right"></i>
					</span> </a>
					<ul class="treeview-menu">
						<li><a href="jobPropsalPage.do">업무기안</a></li>
						<li><a href="orderFormPage.do">발주서</a></li>
						<li><a href="spendingResolutionPage.do">지출결의서</a></li>
						<li><a href="roundRobinPage.do">품의서</a></li>
						<li><a href="vacationFormPage.do">휴가계</a></li>
					</ul></li>
				<li class="header">결재하기</li>
				<li><a href="#"><i class="fa fa-link"></i> <span>결재대기</span></a></li>
				<li><a href="#"><i class="fa fa-link"></i> <span>결재예정</span></a></li>
				<li class="header">결재문서함</li>
				<li><a href="draftedPage.do"><i class="fa fa-link"></i> <span>기안문서함</span></a></li>
				<li><a href="#"><i class="fa fa-link"></i> <span>결재문서함</span></a></li>
			</ul>
			<!-- /.sidebar-menu -->
		</section>
		<!-- /.sidebar -->
	</aside>

</body>
</html>