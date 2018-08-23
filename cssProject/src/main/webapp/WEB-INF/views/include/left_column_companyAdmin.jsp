<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE >
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <aside class="main-sidebar" style="padding-top: 0 ">

    <section class="sidebar" >

      <div class="user-panel">
	        <div class="pull-left image">
	          <img src="resources/upload/empPhoto/${sessionScope.user.ePhoto}" class="img-circle" alt="User Image">
	        </div>
	        <div class="pull-left info">
	          <p><c:out value="${sessionScope.user.cName} "/></p>
	          <!-- Status -->
	          <a href="#"><i class="fa fa-circle text-success"></i> <c:out value="${sessionScope.user.department} "/></a>
	        </div>
	      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->

        <li><a href=""><i class="fa  fa-cogs"></i> <span>회사관리</span></a></li>
        <li><a href=""><i class="fa   fa-refresh"></i> <span>근태관리</span></a></li>
        <li><a href=""><i class="fa  fa-user"></i> <span>조직도</span></a></li>
        <li><a href=""><i class="fa fa-calendar-check-o"></i> <span>일정관리</span></a></li>
        <li><a href=""><i class="fa  fa-book"></i> <span>전자결재</span></a></li>
        <li><a href="receiveNoteList.do"><i class="fa fa-envelope-o"></i> <span>쪽지</span></a></li>
        <li><a href=""><i class="fa  fa-bullhorn"></i> <span>커뮤니티</span></a></li>
        <li><a href=""><i class="fa  fa-comments-o"></i> <span>문의하기</span></a></li>
        
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
 
</body>
</html>