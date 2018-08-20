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
	<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar" style="padding-top: 0 ">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <c:choose>
      <c:when test="${empty(sessionScope.user)}">
	      <div class="user-panel">
	        <div class="pull-left image">
	          <img src="resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
	        </div>
	        <div class="pull-left info">
	          <p>Alexander Pierce</p>
	          <!-- Status -->
	          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
	        </div>
	      </div>
      </c:when>
      <c:otherwise>
      	<div class="user-panel">
	        <div class="pull-left image">
	          <img src="resources/upload/empPhoto/${sessionScope.user.ePhoto}" class="img-circle" alt="User Image">
	        </div>
	        <div class="pull-left info">
	          <p><c:out value="${sessionScope.user.eName} ${sessionScope.user.job}"/></p>
	          <!-- Status -->
	          <a href="#"><i class="fa fa-circle text-success"></i> <c:out value ="${sessionScope.user.department}"/></a>
	        </div>
	      </div>
      </c:otherwise>
      </c:choose>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->

        <li class="active"><a href="organizationChart.do"><i class="fa fa-link"></i> <span>조직도</span></a></li>
        <li><a href="employeeIndex.do"><i class="fa fa-link"></i> <span>사원 인덱스</span></a></li>
        <li><a href=""><i class="fa fa-link"></i> <span>사원 정보</span></a></li>
        <li class="treeview">
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#">Link in level 2</a></li>
            <li><a href="#">Link in level 2</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
 
</body>
</html>