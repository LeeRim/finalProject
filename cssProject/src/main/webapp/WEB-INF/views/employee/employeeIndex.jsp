<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>


  
  <script>
  	function boardPage(bType){
  		location.href="borderList.do?bCateGory=" + bType;
  	}
  	function board(){
  		location.href="borderIndex.do"
  	}
  </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="../include/left_column_employee.jsp"/>
  
  


  <div class="content-wrapper" style="height: 100%;">

    <section class="content-header">

    </section>

    <!-- Main content -->
    <section class="content container-fluid">

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="../include/footer.jsp"/>
<P>  The time on the server is ${serverTime}. 111</P>
</body>
</html>