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
	
	</script>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="/WEB-INF/views/include/left_column.jsp"/>
  

  <div class="content-wrapper" style="height: 100%;">

    <section class="content-header">
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<c:if test="${user.eType eq 1}">
			<table>
				<thead>
					<tr>
						<th>사원번호</th>
						<th>출근일 </th>
						<th>출근시간</th>
						<th>퇴근시간</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="commute">
					<tr>
						<td>${user.eKey}</td>
						<td>${commute.inDate}</td>
						<td>${commute.strInTime}</td>
						<td>${commute.strOutTime}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		
		<c:if test="${user.eType ne 1}">
			<table>
				<thead>
					<tr>
						<th>출근일 </th>
						<th>출근시간</th>
						<th>퇴근시간</th>
					</tr>
				</thead>
				<c:forEach items="${list2}" var="commute">
					<tr>
						<td>${commute.inDate}</td>
						<td>${commute.strInTime}</td>
						<td>${commute.strOutTime}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="/WEB-INF/views/include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
<P>  The time on the server is ${serverTime}. 111</P>

</body>
</html>