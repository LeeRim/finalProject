<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
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

  
  <script>
  	function boardPage(bType){
  		location.href="borderList.do?bCateGory=" + bType;
  	}
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
	
	<c:import url="include/left_column.jsp"/>
  
  

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper" style="height: 100%;">

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Page Header
        <button onclick="boardPage(1);">공지사항</button>
        <button onclick="boardPage(2);">자유게시판</button>
        <button onclick="boardPage(3);">경조사</button>
        <small>Optional description</small>
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
        
        <a href="loginForm.do">로그인</a>
        <a href="approvalPage.do">전자결재</a>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>