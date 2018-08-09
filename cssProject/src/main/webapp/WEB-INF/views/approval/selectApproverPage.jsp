<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="resources/dist/css/AdminLTE.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
<link rel="stylesheet" href="resources/dist/css/skins/skin-blue.min.css">


<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<!-- jQuery 3 -->
<script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script
	src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="resources/dist/js/adminlte.min.js"></script>
<!-- REQUIRED JS SCRIPTS -->
<link rel="stylesheet"
	href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="resources/dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="resources/plugins/iCheck/flat/blue.css">


<script>
var approvers = new Array();
	function select(index,eKey,name, job, department) {
		var html = $("#approverList").html()
				+ "<tr>"
				+ "<td>"
				+ name
				+ "</td>"
				+ "<td>"
				+ job
				+ "</td>"
				+ "<td style='text-align:center;'>"
				+ department
				+ "</td>"
				+ "<td class='removeBtn' onclick='removeApprover("+eKey+",this);'><i class='fa fa-remove'></i></td>"
		"</tr>";
		$("#approverList").html(html);
		approvers.push(eKey);
		console.log(approvers);
	}

	function removeApprover(eKey,obj) {
		$(obj).parent().remove();
		for(var i=0;i<approvers.length;i++){
			if(approvers[i]==eKey){				
				approvers.splice(i,1);
			}
		}
		console.log(approvers);
	}
	
	function addApprovers(){
		location.href="addApprovers.do?addArr="+approvers;
	}
</script>

</head>
<body>
	<div class="box" style="width: 1065px;">
		<div class="box-header">
			<h3 class="box-title" style="text-align: center;">결재선</h3>
		</div>
	</div>
	<div class="row" style="height: 520px;">
		<div class="col-md-1"></div>
		<div class="col-md-3">
			<label class="btn btn-primary btn-block margin-bottom">수신자 선택</label>

			<c:forEach items="${department}" var="department">
				<div class="box box-solid collapsed-box" style="width: 100%">
					<div class="box-header with-border">
						<h3 class="box-title">
							<c:out value="${department.department}" />
						</h3>

						<div class="box-tools">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-plus"></i>
							</button>
						</div>
					</div>
					<div class="box-body no-padding" style="display: none;">
						<ul class="nav nav-pills nav-stacked">
							<c:forEach items="${employee}" var="employee" varStatus="st">
								<c:if test="${employee.department == department.department}">
									<li><a
										onclick="select(${st.index},${employee.eKey},'${employee.eName}','${employee.job}','${employee.department}');"><i
											class="fa fa-circle-o text-red"></i> <c:out
												value="${employee.eName}" /></a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<!-- /.box-body -->
				</div>
			</c:forEach>
			<!-- /.box -->
		</div>
		<!-- /.col -->

		<div class="col-md-8">

			<!-- /.box -->

			<div class="box">
				<div class="box-header">
					<h3 class="box-title">결재자 선택 목록</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body no-padding">
					<table class="table table-condensed" id="approverList">
						<tr>
							<th style="width: 150px">이름</th>
							<th style="width: 200px">직급</th>
							<th style="width: 200px; text-align: center;">부서</th>
							<td style="width: 40px"></td>
						</tr>

					</table>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->


		</div>
	</div>
	<hr>
	<div style="height: 30px;">
		<div align="center">
			<button onclick="addApprovers();">확인</button>
		</div>
	</div>
</body>
</html> --%>


<script>
var approvers = new Array();
	function select(index,eKey,name, job, department) {
		var html = $("#approverList").html()
				+ "<tr>"
				+ "<td>"
				+ name
				+ "</td>"
				+ "<td>"
				+ job
				+ "</td>"
				+ "<td style='text-align:center;'>"
				+ department
				+ "</td>"
				+ "<td class='removeBtn' onclick='removeApprover("+eKey+",this);'><i class='fa fa-remove'></i></td>"
		"</tr>";
		$("#approverList").html(html);
		approvers.push(eKey);
	}

	function removeApprover(eKey,obj) {
		$(obj).parent().remove();
		for(var i=0;i<approvers.length;i++){
			if(approvers[i]==eKey){				
				approvers.splice(i,1);
			}
		}
	}
	
	function addApprovers(){
		//console.log(approvers.join(", "));
		$("#appStr").val(approvers);
	}
	
</script>


<!-- 팝업 모달영역 -->
<div class="modal fade" id="layerpop" style="text-align:center;">
	<div class="modal-dialog" style="margin-left:370px;">
		<div class="modal-content" style="width: 1070px; height: 600px; margin-top:150px;">
			<!-- header -->
			<!-- <div class="modal-header">
				닫기(x) 버튼
				header title
				<h4 class="modal-title">이력서 선택</h4>
			</div> -->
			<div class="box" style="width: 1065px;">
				<div class="box-header">
					<h3 class="box-title" style="text-align: center;">결재선</h3>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
			</div>
			<!-- body -->
			<div class="modal-body">

				<div class="row" style="height: 500px;">
					<div class="col-md-1"></div>
					<div class="col-md-3">
						<label class="btn btn-primary btn-block margin-bottom">수신자
							선택</label>

						<c:forEach items="${department}" var="department">
							<div class="box box-solid collapsed-box" style="width: 100%">
								<div class="box-header with-border">
									<h3 class="box-title">
										<c:out value="${department.department}" />
									</h3>

									<div class="box-tools">
										<button type="button" class="btn btn-box-tool"
											data-widget="collapse">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
								<div class="box-body no-padding" style="display: none;">
									<ul class="nav nav-pills nav-stacked">
										<c:forEach items="${employee}" var="employee" varStatus="st">
											<c:if test="${employee.department == department.department}">
												<li><a
													onclick="select(${st.index},${employee.eKey},'${employee.eName}','${employee.job}','${employee.department}');"><i
														class="fa fa-circle-o text-red"></i> <c:out
															value="${employee.eName}" /></a></li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<!-- /.box-body -->
							</div>
						</c:forEach>
						<!-- /.box -->
					</div>
					<!-- /.col -->

					<div class="col-md-8">

						<!-- /.box -->

						<div class="box">
							<div class="box-header">
								<h3 class="box-title">결재자 선택 목록</h3>
							</div>
							<!-- /.box-header -->
							<div class="box-body no-padding">
								<table class="table table-condensed" id="approverList">
									<tr>
										<th style="width: 150px">이름</th>
										<th style="width: 200px">직급</th>
										<th style="width: 200px; text-align: center;">부서</th>
										<td style="width: 40px"></td>
									</tr>

								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->


					</div>
				</div>
				<hr>
				<div style="height: 30px;">
					<div align="center">
						<button type="button" class="btn btn-success" onclick="addApprovers();">확인</button>
						<button type="button" class="btn btn-danger" id="closeBtn" data-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>