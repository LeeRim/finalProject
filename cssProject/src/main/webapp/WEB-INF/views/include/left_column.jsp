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

  <aside class="main-sidebar" style="padding-top:0px;">


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
	        <c:choose>
	        	<c:when test="${sessionScope.user.cName != null}">
		          <p><c:out value="${sessionScope.user.cName}"/></p>
		          <!-- Status -->
		          <a href="#"><i class="fa fa-circle text-success"></i> <c:out value ="${sessionScope.user.department}"/></a>
	        	</c:when>
	        	<c:otherwise>
	        		 <a><i class="fa fa-circle text-success"></i> 등록된 정보가 없습니다.<br>정보를 등록하세요</a>
	        	</c:otherwise>
	        </c:choose>
	        </div>
	      </div>
      </c:otherwise>
      </c:choose>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
		<c:if test="${user.eType == '2'}">
	        <li><a href="myPageUpdate.do"><i class="fa fa-link"></i> <span>마이페이지 수정</span></a></li>
        </c:if>
        <c:if test="${user.eType == '1'}">
        <li><a href="adminOrganizationChart.do"><i class="fa fa-link"></i> <span>사원 정보 관리</span></a></li>
        <li><a href="myPageUpdate.do"><i class="fa fa-link"></i> <span>마이페이지 수정</span></a></li>
        <li><a href="companyUpdate.do"><i class="fa fa-link"></i> <span>회사 정보 수정</span></a></li>
        <li><a href="memberAdd.do"><i class="fa fa-link"></i> <span>사원 등록</span></a></li>
        <li><a href="department.do"><i class="fa fa-link"></i> <span>부서 관리</span></a></li>
        <li><a href="givevacation.do"><i class="fa fa-link"></i> <span>연차 등록</span></a></li>
        <li><a href="givevacation.do"><i class="fa  fa-plane"></i> <span>휴가</span></a></li>
        </c:if>
        <li class="treeview">
            <span class="pull-right-container">
<!--                 <i class="fa fa-angle-left pull-right"></i> -->
              </span>
          
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




