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
.logout{
	margin-top:8px;
}
</style>
</head>
<body>
	<!-- Main Header -->
	<header class="main-header">

		<!-- Logo -->
		<c:if test="${sessionScope.user.cLevel== 0}">
			<a href="#" class="logo" onclick="menuHighlight(1);">
			<span class="logo-mini"><b>C</b>SS</span> <span class="logo-lg"><b>C</b>SS</span>
		</a>
		</c:if>
		<c:if test="${sessionScope.user.eType=='2' }">
			<!-- 사원 -->
			<a href="employeeIndex.do" class="logo" onclick="menuHighlight(1);">
			<span class="logo-mini"><b>C</b>SS</span> <span class="logo-lg"><b>C</b>SS</span>
		</a>
		</c:if>
		<c:if test="${sessionScope.user.eType=='1' }">
			<!-- 회사관리자 -->
			<a href="adminIndex.do" class="logo" onclick="menuHighlight(1);">
			<span class="logo-mini"><b>C</b>SS</span> <span class="logo-lg"><b>C</b>SS</span>
		</a>
		</c:if>
		<c:if test="${sessionScope.user.eType=='0' }">
			<!-- 회사관리자 -->
			<a href="adminMain.do" class="logo" onclick="menuHighlight(1);">
			<span class="logo-mini"><b>C</b>SS</span> <span class="logo-lg"><b>C</b>SS</span>
		</a>
		</c:if>
		

		<!-- Header Navbar -->
		<nav class="navbar navbar-static-top" role="navigation">
			<div class="btn-group">
				<a class="sidebar-toggle" data-toggle="dropdown"> </a>
				<div class="pull-right logout"><a href="logout.do" class="btn btn-default btn-flat">로그아웃</a></div>
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