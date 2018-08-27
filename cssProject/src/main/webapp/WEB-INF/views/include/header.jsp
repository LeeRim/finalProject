<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/dist/css/AdminLTE.css">
<link rel="stylesheet" href="resources/dist/css/skins/skin-blue.min.css">

<link rel="stylesheet"
	href="resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.css">

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<!-- jQuery 3 -->
<script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script
	src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- REQUIRED JS SCRIPTS -->

<link rel="stylesheet"
	href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="resources/dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="resources/plugins/iCheck/flat/blue.css">

<script
	src="resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>


<script>
	function menuHighlight(clickIdx) {
		sessionStorage.setItem("menu", clickIdx);
	}
</script>

<style type="text/css">
.headerMenu{
width: 410px;
}
.headerMenu li{
float:left;
}
.headerMenu li a:hover {
	background-color: #3c8dbc;
}
.headerMenu li a{
width:100px; height:100px;
text-align:center;
}
.headerMenu li a i{
margin:10px 5px 10px 8px;
align:center;
}
.headerMenu li a i::before{
font-size:45px;
}
.headerMenu li a span{
font-size:15px;
}
</style>
</head>
<body>
	<!-- Main Header -->
	<header class="main-header">

		<!-- Logo -->
		<c:if test="${sessionScope.user.eType=='2' }">
			<!-- 사원 -->
			<a href="employeeIndex.do" class="logo" onclick="menuHighlight(1);">
		</c:if>
		<c:if test="${sessionScope.user.eType=='1' }">
			<!-- 회사관리자 -->
			<a href="adminIndex.do" class="logo" onclick="menuHighlight(1);">
		</c:if>
		<c:if test="${sessionScope.user.eType=='0' }">
			<!-- 회사관리자 -->
			<a href="adminMain.do" class="logo" onclick="menuHighlight(1);">
		</c:if>
		<span class="logo-mini"><b>C</b>SS</span> <span class="logo-lg"><b>C</b>SS</span>
		</a>

		<!-- Header Navbar -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<div class="btn-group">
				<a class="sidebar-toggle" data-toggle="dropdown"> </a>
				<c:if test="${sessionScope.user.eType=='2' }">
					<!-- 사원 -->
					<ul class="dropdown-menu headerMenu">
						<li><a href="myPageUpdate.do"><i class="fa fa-cogs"></i><br>
								<span>회원정보</span></a></li>
						<li><a href="commuteCheck.do"><i class="fa fa-refresh"></i><br>
								<span>근태관리</span></a></li>
						<li><a href="organizationChart.do"><i class="fa fa-user"></i><br>
								<span>조직도</span></a></li>
						<li><a href="calender.do"><i
								class="fa fa-calendar-check-o"></i><br> <span>일정관리</span></a></li>
						<li><a href="waitingPage.do"><i class="fa fa-book"></i><br> <span>전자결재</span></a></li>
						<li><a href="receiveNoteList.do"><i
								class="fa fa-envelope-o"></i><br> <span>쪽지</span></a></li>
						<li><a href="borderIndex.do"><i class="fa fa-bullhorn"></i><br>
								<span>커뮤니티</span></a></li>
					</ul>
				</c:if>
				<c:if test="${sessionScope.user.eType=='1' }">
					<!-- 회사관리자 -->
					<ul class="dropdown-menu headerMenu">
						<li><a href="companyUpdate.do"><i class="fa  fa-cogs" id="icon"></i><br>
								<span>회사관리</span></a></li>
						<li><a href="commuteCheck.do"><i class="fa   fa-refresh"></i><br>
								<span>근태관리</span></a></li>
						<li><a href="organizationChart.do"><i class="fa  fa-user"></i><br>
								<span>조직도</span></a></li>
						<li><a href="calender.do"><i
								class="fa fa-calendar-check-o"></i><br> <span>일정관리</span></a></li>
						<li><a href="waitingPage.do"><i class="fa  fa-book"></i><br>
								<span>전자결재</span></a></li>
						<li><a href="receiveNoteList.do"><i
								class="fa fa-envelope-o"></i><br> <span>쪽지</span></a></li>
						<li><a href="borderIndex.do"><i class="fa  fa-bullhorn"></i><br>
								<span>커뮤니티</span></a></li>
						<li><a href="empQNA.do"><i class="fa  fa-comments-o"></i><br>
								<span>문의하기</span></a></li>

					</ul>
				</c:if>
			</div>
			<!-- Navbar Right Menu -->
			<div class="navbar-custom-menu">
				<ul class="nav navbar-nav">
					<!-- Messages: style can be found in dropdown.less-->
					<li class="dropdown messages-menu">
						<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <c:if
								test="${sessionScope.indexNote.size()!=0 }">
								<span class="label label-success"><c:out
										value="${fn:length(sessionScope.indexNote)}" /></span>
							</c:if>
					</a>
						<ul class="dropdown-menu">
							<li class="header">안읽은 쪽지</li>
							<li>
								<!-- inner menu: contains the messages -->
								<ul class="menu">
									<c:forEach items="${sessionScope.indexNote}" var="note">
										<li>
											<!-- start message --> <a
											href="receiveNoteDetail.do?snKey=${note.snKey}&rnKey=${note.rnKey}"">
												<div class="pull-left">
													<!-- User Image -->
													<img src="resources/upload/empPhoto/${note.ePhoto}"
														class="img-circle" alt="user">
												</div> <!-- Message title and timestamp -->
												<h4>
													<c:out value="${note.eName} ${note.job}" />
													<small><i class="fa fa-clock-o"></i> <c:out
															value="${note.snWriteDate}" /></small>
												</h4> <!-- The message -->
												<p>
													<c:out value="제목 :  ${note.snTitle}" />
												</p>
										</a>
										</li>

									</c:forEach>
									<!-- end message -->
								</ul> <!-- /.menu -->
							</li>
							<li class="footer"><a href="receiveNoteList.do">받은 쪽지 함</a></li>
						</ul>
					</li>

					<!-- /.messages-menu -->

					<!-- Notifications Menu -->
					<li class="dropdown notifications-menu">
						<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <c:if
								test="${sessionScope.indexApproval.size()!=0 }">
								<span class="label label-warning"><c:out
										value="${sessionScope.indexApproval.size() }"></c:out></span>
							</c:if>
					</a>
						<ul class="dropdown-menu">
							<li class="header">결재대기문서</li>
							<li>
								<!-- Inner Menu: contains the notifications -->
								<ul class="menu">
									<c:forEach var="approval" items="${indexApproval }">
										<li>
											<!-- start notification --> <c:choose>
												<c:when test="${approval.divDoctypeFk==1 }">
													<a href="openJobPropsalDetail.do?aKey=${approval.aKey }">
														<div class="pull-left">
															<!-- User Image -->
															<img
																src="resources/upload/empPhoto/${approval.writer.ePhoto}"
																class="img-circle" alt="user">
														</div> <!-- Message title and timestamp -->
														<h4>
															<c:out
																value="${approval.writer.eName} ${approval.writer.job }" />
															<small><i class="fa fa-clock-o"></i> <c:out
																	value="${approval.aWriteDate}" /></small>
														</h4> <!-- The message -->
														<p>
															<c:out value="제목 :  ${approval.aTitle}" />
														</p>
													</a>
												</c:when>
												<c:when test="${approval.divDoctypeFk==2 }">
													<a href="openOrderFormDetail.do?aKey=${approval.aKey }">
														<div class="pull-left">
															<!-- User Image -->
															<img
																src="resources/upload/empPhoto/${approval.writer.ePhoto}"
																class="img-circle" alt="user">
														</div> <!-- Message title and timestamp -->
														<h4>
															<c:out
																value="${approval.writer.eName} ${approval.writer.job }" />
															<small><i class="fa fa-clock-o"></i> <c:out
																	value="${approval.aWriteDate}" /></small>
														</h4> <!-- The message -->
														<p>
															<c:out value="제목 :  ${approval.aTitle}" />
														</p>
													</a>
												</c:when>
												<c:when test="${approval.divDoctypeFk==3 }">
													<a href="#">
														<div class="pull-left">
															<!-- User Image -->
															<img
																src="resources/upload/empPhoto/${approval.writer.ePhoto}"
																class="img-circle" alt="user">
														</div> <!-- Message title and timestamp -->
														<h4>
															<c:out
																value="${approval.writer.eName} ${approval.writer.job }" />
															<small><i class="fa fa-clock-o"></i> <c:out
																	value="${approval.aWriteDate}" /></small>
														</h4> <!-- The message -->
														<p>
															<c:out value="제목 :  ${approval.aTitle}" />
														</p>
													</a>
												</c:when>
												<c:when test="${approval.divDoctypeFk==4 }">
													<a href="#">
														<div class="pull-left">
															<!-- User Image -->
															<img
																src="resources/upload/empPhoto/${approval.writer.ePhoto}"
																class="img-circle" alt="user">
														</div> <!-- Message title and timestamp -->
														<h4>
															<c:out
																value="${approval.writer.eName} ${approval.writer.job }" />
															<small><i class="fa fa-clock-o"></i> <c:out
																	value="${approval.aWriteDate}" /></small>
														</h4> <!-- The message -->
														<p>
															<c:out value="제목 :  ${approval.aTitle}" />
														</p>
													</a>
												</c:when>
												<c:when test="${approval.divDoctypeFk==5}">
													<a href="openVacationFormDetail.do?aKey=${approval.aKey }">
														<div class="pull-left">
															<!-- User Image -->
															<img
																src="resources/upload/empPhoto/${approval.writer.ePhoto}"
																class="img-circle" alt="user">
														</div> <!-- Message title and timestamp -->
														<h4>
															<c:out
																value="${approval.writer.eName} ${approval.writer.job }" />
															<small><i class="fa fa-clock-o"></i> <c:out
																	value="${approval.aWriteDate}" /></small>
														</h4> <!-- The message -->
														<p>
															<c:out value="휴가계" />
														</p>
													</a>
												</c:when>
											</c:choose>
										</li>
									</c:forEach>
									<!-- end notification -->
								</ul>
							</li>
							<li class="footer"><a href="waitingPage.do">결재대기문서함</a></li>
						</ul>
					</li>

					<!-- User Account Menu -->
					<li class="dropdown user user-menu">
						<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <!-- The user image in the navbar--> <img
							src="resources/upload/empPhoto/${sessionScope.user.ePhoto}"
							class="user-image" alt="user"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
							<span class="hidden-xs"><c:out
									value="${sessionScope.user.eName}" /></span>
					</a>
						<ul class="dropdown-menu">
							<!-- The user image in the menu -->
							<li class="user-header"><img
								src="resources/upload/empPhoto/${sessionScope.user.ePhoto}"
								class="img-circle" alt="user">
								<p>
									<c:out
										value="${sessionScope.user.eName} ${sessionScope.user.job}" />
									<small><c:out value="${sessionScope.user.department}" /><br>
										<c:choose>
											<c:when test="${sessionScope.user.eState == 0}">
                  					(자리비움)	
                  				</c:when>
											<c:otherwise>
									(근무중)                  				
                  				</c:otherwise>
										</c:choose> </small>
								</p></li>
							<!-- Menu Body -->
							<li class="user-body">
								<div class="row">
									<div class="col-xs-4 text-center">
										<a href="stateUpdate.do?eState=0">자리비움<br>(휴가)
										</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="stateUpdate.do?eState=0">출장</a>
									</div>
									<div class="col-xs-4 text-center">
										<a href="stateUpdate.do?eState=1">근무복귀</a>
									</div>
								</div> <!-- /.row -->
							</li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="#" class="btn btn-default btn-flat">마이페이지</a>
								</div>
								<div class="pull-right">
									<a href="logout.do" class="btn btn-default btn-flat">로그아웃</a>
								</div>
							</li>
						</ul>
					</li>
					<!-- Control Sidebar Toggle Button -->
					<li>
						<!--             <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a> -->
					</li>
				</ul>
			</div>
		</nav>
	</header>

	<!-- 오른쪽 사이드바 톱니바퀴 눌렀을때 나오는 바-->
	<!-- Control Sidebar -->
	<!--   <aside class="control-sidebar control-sidebar-dark"> -->
	<!--     Create the tabs -->
	<!--     <ul class="nav nav-tabs nav-justified control-sidebar-tabs"> -->
	<!--       <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li> -->
	<!--       <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li> -->
	<!--     </ul> -->
	<!--     Tab panes -->
	<!--     <div class="tab-content"> -->
	<!--       Home tab content -->
	<!--       <div class="tab-pane active" id="control-sidebar-home-tab"> -->
	<!--         <h3 class="control-sidebar-heading">Recent Activity</h3> -->
	<!--         <ul class="control-sidebar-menu"> -->
	<!--           <li> -->
	<!--             <a href="javascript:;"> -->
	<!--               <i class="menu-icon fa fa-birthday-cake bg-red"></i> -->


	<!--               <div class="menu-info"> -->
	<!--                 <h4 class="control-sidebar-subheading">Langdon's Birthday</h4> -->



	<!--                 <p>Will be 23 on April 24th</p> -->
	<!--               </div> -->
	<!--             </a> -->
	<!--           </li> -->
	<!--         </ul> -->
	<!--         /.control-sidebar-menu -->


	<!--         <h3 class="control-sidebar-heading">Tasks Progress</h3> -->
	<!--         <ul class="control-sidebar-menu"> -->
	<!--           <li> -->
	<!--             <a href="javascript:;"> -->
	<!--               <h4 class="control-sidebar-subheading"> -->
	<!--                 Custom Template Design -->
	<!--                 <span class="pull-right-container"> -->
	<!--                     <span class="label label-danger pull-right">70%</span> -->
	<!--                   </span> -->
	<!--               </h4> -->


	<!--               <div class="progress progress-xxs"> -->
	<!--                 <div class="progress-bar progress-bar-danger" style="width: 70%"></div> -->
	<!--               </div> -->
	<!--             </a> -->
	<!--           </li> -->
	<!--         </ul> -->
	<!--         /.control-sidebar-menu -->
	<!--       </div> -->
	<!--       /.tab-pane -->
	<!--       Stats tab content -->
	<!--       <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div> -->
	<!--       /.tab-pane -->
	<!--       Settings tab content -->
	<!--       <div class="tab-pane" id="control-sidebar-settings-tab"> -->
	<!--         <form method="post"> -->
	<!--           <h3 class="control-sidebar-heading">General Settings</h3> -->


	<!--           <div class="form-group"> -->
	<!--             <label class="control-sidebar-subheading"> -->
	<!--               Report panel usage -->
	<!--               <input type="checkbox" class="pull-right" checked> -->
	<!--             </label> -->



	<!--             <p> -->
	<!--               Some information about this general settings option -->
	<!--             </p> -->
	<!--           </div> -->
	<!--           /.form-group -->
	<!--         </form> -->
	<!--       </div> -->
	<!--       /.tab-pane -->
	<!--     </div> -->
	<!--   </aside> -->
	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed

  immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
	<!-- ./wrapper -->

</body>
</html>