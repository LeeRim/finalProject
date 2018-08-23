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
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
        <li ><a href="writeNote.do" ><i class="fa fa-link"></i> <span>쪽지작성</span></a></li>
         <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>수신쪽지</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
          	<li><a href="receiveNoteList.do">수신쪽지함</a></li>
            <li><a href="receiveNoteTrashList.do">휴지통</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>보낸쪽지</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="sendNoteList.do">보낸쪽지함</a></li>
            <li><a href="sendNoteTrashList.do">휴지통</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
 
</body>
</html>