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
<script type="text/javascript">
function select(key,no,name,job,depart,state,photo){
	$("#updateTag").attr("href","updateInstead.do?iKey="+key);
	$("#profileImg").attr("src","resources/upload/empPhoto/"+photo);
	$("#name").html(name);
	if(state==0){
	$("#state").html("(휴가/출장으로 인한)결재불가능");
	}else{
		$("#state").html("결재가능");
	}
	$("#depart").html(depart);
	$("#job").html(job);
	$("#no").html(no);
}

$(function(){
	$("#labelBtn").hover(function(){
		$("#labelBtn").css("background","#337ab7");
	});
});
</script>

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
					<label class="btn btn-primary btn-block margin-bottom" id="labelBtn">대결자
						선택</label>

					<c:forEach items="${department}" var="department">
						<div class="box box-solid collapsed-box" style="margin:3px 0 0 0;width: 100%">
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
												onclick="select(${employee.eKey},'${employee.eNo}','${employee.eName}','${employee.job}','${employee.department}',${employee.eState},${employee.ePhoto});"><i
													class="fa fa-circle-o text-red"></i> <c:out
														value="${employee.eName} ${employee.job }" /></a></li>
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
					<c:if test="${instead == null }">
						<!-- Profile Image -->
						<div class="box box-primary" style="width: 600px;">
							<div class="box-body box-profile">
								<img id="profileImg"
									class="profile-user-img img-responsive img-circle"
									src="resources/upload/"
									alt="User profile picture" style="width: 150px; height: 150px;">

								<h3 id="name" class="profile-username text-center">
								</h3>

								<p id="state" class="text-muted text-center">
									설정된 대결자가 없습니다.
								</p>

								<ul class="list-group list-group-unbordered">
									<li class="list-group-item"><div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4" style="text-align: center;">
												<b>사원번호</b>
											</div>
											<div class="col-md-4" style="text-align: center;">
												<span id="no"></span>
											</div>
										</div></li>
									<li class="list-group-item"><div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4" style="text-align: center;">
												<b>부서</b>
											</div>
											<div class="col-md-4" style="text-align: center;">
												<span id="depart"></span>
											</div>
										</div></li>
									<li class="list-group-item"><div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4" style="text-align: center;">
												<b>직급</b>
											</div>
											<div class="col-md-4" style="text-align: center;">
												<span id="job"></span>
											</div>
										</div></li>
								</ul>

								<a id="updateTag" href="#"
									class="btn btn-primary btn-block"><b>대결자 선택</b></a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</c:if>
					<c:if test="${instead != null }">
						<!-- Profile Image -->
						<div class="box box-primary" style="width: 600px;">
							<div class="box-body box-profile">
								<img id="profileImg"
									class="profile-user-img img-responsive img-circle"
									src="resources/upload/approval/KakaoTalk_20170331_022521650.jpg"
									alt="User profile picture" style="width: 150px; height: 150px;">

								<h3 id="name" class="profile-username text-center">
									<c:out value="${instead.eName }"></c:out>
								</h3>

								<p id="state" class="text-muted text-center">
									<c:if test="${instead.eState ==1}">결재가능</c:if>
									<c:if test="${instead.eState ==0}">(휴가/출장으로 인한)결재불가능</c:if>
								</p>

								<ul class="list-group list-group-unbordered">
									<li class="list-group-item"><div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4" style="text-align: center;">
												<b>사원번호</b>
											</div>
											<div class="col-md-4" style="text-align: center;">
												<span id="no"><c:out value="${instead.eNo }"></c:out></span>
											</div>
										</div></li>
									<li class="list-group-item"><div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4" style="text-align: center;">
												<b>부서</b>
											</div>
											<div class="col-md-4" style="text-align: center;">
												<span id="depart"><c:out
														value="${instead.department }"></c:out></span>
											</div>
										</div></li>
									<li class="list-group-item"><div class="row">
											<div class="col-md-2"></div>
											<div class="col-md-4" style="text-align: center;">
												<b>직급</b>
											</div>
											<div class="col-md-4" style="text-align: center;">
												<span id="job"><c:out value="${instead.job }"></c:out></span>
											</div>
										</div></li>
								</ul>

								<a id="updateTag" href="updateInstead.do?iKey=${instead.eKey}"
									class="btn btn-primary btn-block"><b>대결자 선택</b></a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
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