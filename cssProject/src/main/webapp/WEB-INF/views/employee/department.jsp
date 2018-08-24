<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Starter</title>
</head>

<link rel="stylesheet"
	href="resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.css">

<!-- InputMask -->
<script src="resources/plugins/input-mask/jquery.inputmask.js"></script>
<script
	src="resources/plugins/input-mask/jquery.inputmask.phone.extensions.js"></script>
<script
	src="resources/plugins/input-mask/jquery.inputmask.extensions.js"></script>


<script
	src="resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>


<style>
.frame {
	padding: 0 20px;
	/* border: 1px solid black;  */
	width: 100%;
	height: 100%;
}

.box-body {
	display: block;
	padding: 20px 100px;
}

.form-group {
	color: #848484;
	'
}

.no {
	display: inline-block;
	font-size: 18px;
	font-weight: bold;
}

.jobInfo {
	display: inline-block;
}

tr {
	line-height: 35px;
	color: #848484;
}

th {
	text-align: center;
}

td {
	padding: 5px 10px;
}

.input2 {
	width: 300px;
}
</style>
<body class="hold-transition skin-blue sidebar-mini">

	<script type="text/javascript">
		$(function() {
			var num = 1;
			$('#btn-departAdd-row')
					.click(
							function() {
								$('#mytable1 > tbody:last')
										.append(
												'<tr><td><input type="hidden" name="departKey"><input type = "text" name="depart" class="form-control"/> </td></tr>');
							});
			$('#btn-jobAdd-row')
					.click(
							function() {
								//num = $("#mytable2 tbody tr").last().find("td").first().text();
								num = (parseInt(num) + 1)
								//console.log(num);
								$('#mytable2 > tbody:last')
										.append(
												'<tr><td><input type="hidden" name="level" value="'+num+'">'
														+ num
														+ '</td><td><input type="hidden" name="jobKey"><input type = "text" name="job" class="form-control"/> </td></tr>');

							});
			$('#btn-departRemove-row').click(function() {
				$('#mytable1 > tbody:last > tr:last').remove();
			});
			$('#btn-jobRemove-row').click(function() {
				num = num - 1;
				$('#mytable2 > tbody:last > tr:last').remove();
			});
		});
	</script>


	<div class="wrapper">

		<c:import url="../include/left_column.jsp" />



		<div class="content-wrapper">
			<section class="content-header">
				<h1>조직도</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<section>
				<div class="frame">

					<div class="box box-primary"
						style="margin: 50px 0 0 200px; width: 1000px;">
						<div class="box-header with-border">
							<h3 class="box-title">부서관리</h3>

						</div>
						<!-- /.box-header -->
						<div align="right" style="margin-right:30px;">
						<button id='btn-departAdd-row' class="btn btn-warning" style="width:70px;">부서<i class="fa fa-plus"></i></button>
						<button id='btn-departRemove-row' class="btn btn-warning" style="width:70px;">부서<i class="fa fa-minus"></i></button>
						<button id='btn-jobAdd-row' class="btn btn-success" style="width:70px;">직급<i class="fa fa-plus"></i></button>
						<button id='btn-jobRemove-row' class="btn btn-success" style="width:70px;">직급<i class="fa fa-minus"></i></button>
						</div>
						<!-- form start -->
						<form role="form" action="insertDivision.do" method="post">
							<div class="row" style="padding:30px;">
								<div class="col-md-3"></div>
								<div class="col-md-3">
									<table id="mytable1">
										<tr>
											<th>부서명</th>
										</tr>
										<tbody>
											<c:if test="${departList.size()!=0}">
												<c:forEach var="depart" items="${departList }">
													<tr>
														<td><input type="hidden" name="departKey"
															value="${depart.eDepartFk}"> <input type="text"
															name="depart" class="form-control"
															value="${depart.department }" /></td>
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${departList.size()==0}">
												<tr>
													<td><input type="hidden" name="departKey"> <input
														type="text" name="depart" class="form-control" /></td>
												</tr>
											</c:if>
										</tbody>
									</table>
								</div>
								<div class="col-md-6">
									<table id="mytable2">
										<tr>
											<th></th>
											<th>직급명</th>
										</tr>
										<tbody>
											<c:if test="${jobList.size()!=0}">
												<c:forEach var="job" items="${jobList }">
													<tr>
														<td><input type="hidden" name="level" value="${job.divInfolevel}"><c:out value="${job.divInfolevel}"></c:out></td>
														<td><input type="hidden" name="jobKey" value="${job.eJobcodeFk }"> <input
															type="text" name="job" class="form-control"  value="${job.job }"/></td>
													</tr>
												</c:forEach>
											</c:if>
											<c:if test="${jobList.size()==0 }">
													<tr>
														<td><input type="hidden" name="level" value="1">1</td>
														<td><input type="hidden" name="jobKey"> <input
															type="text" name="job" class="form-control" /></td>
													</tr>
											</c:if>
										</tbody>
									</table>
								</div>

							</div>

							<div class="box-footer" style="text-align: center;">
								<button class="btn btn-primary" id="joinBtn">등록하기</button>

							</div>
						</form>
						
					</div>


				</div>









			</section>

		</div>

	</div>
	<script type="text/javascript">
		
	</script>



	<c:import url="../include/footer.jsp" />
</body>
</html>