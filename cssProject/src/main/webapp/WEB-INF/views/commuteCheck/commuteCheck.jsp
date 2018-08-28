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
  <link rel="stylesheet" href="resources/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <script src="resources/dist/js/demo.js"></script>
  <title>AdminLTE 2 | Starter</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="/WEB-INF/views/include/left_column.jsp"/>
  

  <div class="content-wrapper" style="height: 100%;">

    <section class="content-header">
    </section>

    <!-- Main content -->
    <section class="content">
    <div class="row">
    	<div class="col-xs-12">
    	<div class="box">
    	<div class="box-header">
    		 <h3 class="box-title">근태관리</h3>
		</div>
		<div class="box-body">
				<c:if test="${user.eType eq 1}">
					<table id="commuteList" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th width="150">사원명</th>
								<th width="150">출근일 </th>
								<th width="150">출근시간</th>
								<th width="150">퇴근시간</th>
							</tr>
						</thead>
						<c:forEach items="${list}" var="commute">
							<tr>
								<td width="150">${commute.name} ${commute.job}</td>
								<td width="150">${commute.inDate}</td>
								<td width="150">${commute.strInTime}</td>
								<td width="150">${commute.strOutTime}</td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
				<c:if test="${user.eType ne 1}">
					<table id="commuteList" class="table table-bordered table-striped">
						<thead>
							<tr>
								<th width="150">출근일 </th>
								<th width="150">출근시간</th>
								<th width="150">퇴근시간</th>
							</tr>
						</thead>
						<c:forEach items="${list2}" var="commute2">
							<tr>
								<td width="150">${commute2.inDate}</td>
								<td width="150">${commute2.strInTime}</td>
								<td width="150">${commute2.strOutTime}</td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
			</div>
		</div>
		</div>
	</div>
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
<script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
<script src="resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script>
$(function () {
    $('#commuteList').DataTable({
      'paging'      : true,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false,
    })
  })

</script>
</body>
</html>