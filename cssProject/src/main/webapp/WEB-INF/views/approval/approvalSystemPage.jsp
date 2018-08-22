<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<c:import url="approval_menu.jsp" />



		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					전자결재페이지 <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid">

				<!--------------------------
        | Your Page Content Here |
        -------------------------->
				<div class="col-md-3">
					<label class="btn btn-primary btn-block margin-bottom">대결자
						선택</label>

					<c:forEach items="${department}" var="department">
						<div class="box box-solid collapsed-box" style="width: 100%">
							<div class="box-header with-border">
								<h3 class="box-title">
									<c:out value="${department.department}" />
								</h3>

								<div class="box-tools">
									<button type="button" class="btn btn-box-tool"
										data-widget="collapse">
										<i class="fa fa-plus"></i>
									</button>
								</div>
							</div>
							<div class="box-body no-padding" style="display: none;">
								<ul class="nav nav-pills nav-stacked">
									<c:forEach items="${employee}" var="employee" varStatus="st">
										<c:if test="${employee.department == department.department}">
											<li><a
												onclick="select(${st.index},${employee.eKey},'${employee.eName}','${employee.job}','${employee.department}',${employee.eState},${employee.instead.eKey},'${employee.instead.eName}','${employee.instead.job}','${employee.instead.department}');"><i
													class="fa fa-circle-o text-red"></i> <c:out
														value="${employee.eName}" /></a></li>
										</c:if>
									</c:forEach>
								</ul>
							</div>
							<!-- /.box-body -->
						</div>
					</c:forEach>
					<!-- /.box -->
				</div>
				<!-- /.col -->

				<div class="col-md-9">
					<%-- <c:if test="${insteadList.size() == 0}">
						<h4>설정된 대결자가 없습니다.</h4>
					</c:if> --%>
					<c:if test="${insteadList.size() != 0 }">
						<c:forEach var="instead" items="${insteadList }">
							<!-- Profile Image -->
							<div class="box box-primary" style="width: 600px;">
								<div class="box-body box-profile">
									<img class="profile-user-img img-responsive img-circle"
										src="resources/upload/approval/KakaoTalk_20170331_022521650.jpg"
										alt="User profile picture"
										style="width: 150px; height: 150px;">

									<h3 class="profile-username text-center">
										<c:out value="${instead.eName }"></c:out>
									</h3>

									<p class="text-muted text-center">Software Engineer</p>

									<ul class="list-group list-group-unbordered">
										<li class="list-group-item"><b>Followers</b> <a
											class="pull-right">1,322</a></li>
										<li class="list-group-item"><b>Following</b> <a
											class="pull-right">543</a></li>
										<li class="list-group-item"><b>Friends</b> <a
											class="pull-right">13,287</a></li>
									</ul>
									<!-- 
								<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a> -->
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box -->
						</c:forEach>
					</c:if>
				</div>
				<!-- /.col -->

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
	</div>



	<c:import url="/WEB-INF/views/include/footer.jsp" />
	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>