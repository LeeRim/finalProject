<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function boardPage(bType) {
		location.href = "borderList.do?bCateGory=" + bType;
	}
	function board() {
		location.href = "borderIndex.do"
	}
	function boardGallery() {
		location.href = "borderGalleryList.do"
	}
</script>
</head>
<body>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar" style="padding-top: 0">

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
			<!-- li에 active 클래스 추가시 클릭으로나옴 -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header">커뮤니티</li>
				<!-- Optionally, you can add icons to the links -->

				<li><a href="#" onclick="boardPage(1);"><i class="fa fa-bullhorn"></i>공지사항</a></li>
				<li><a href="#" onclick="boardPage(2);"><i class="fa fa-comments"></i>자유게시판</a></li>
				<li><a href="#" onclick="boardPage(3);"><i class="fa fa-users"></i>경조사</a></li>
				<li><a href="#" onclick="boardGallery();"><i class="fa fa-image"></i>갤러리</a></li>


			</ul>
			<!-- /.sidebar-menu -->
		</section>
		<!-- /.sidebar -->
	</aside>

</body>
</html>