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
	          <p><c:out value="${sessionScope.user.eName} ${sessionScope.user.job}"/></p>
	          <!-- Status -->
	          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
	        </div>
	      </div>

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->

        <li><a href=""><i class="fa fa-link"></i> <span>마이페이지</span></a></li>
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