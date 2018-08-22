<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- datepicker -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css" />
<script>
$(function() {
	$('#Date').datepicker({
		format : "yyyy/mm/dd",
		language : "kr",
		autoclose : true
	});
});
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/border/left_column_board.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
<div class="row" style="width:95%; margin-right:auto; margin-left:auto;">

	<div>
		<form action="writeGiveVaction.do" method="post">
			<table id="table1" border="1">
				<tr>
					<td>근로년수</td>
					<td>지급일수</td>
				</tr>
				<c:if test="${list.size() != 0}">
					<c:forEach items="${list}" var="gv">
						<input type="hidden" name="gvKey" value="${gv.gvKey }" />
						<tr class="item1">
							<td><input type="text" name="gvYear" value="${gv.gvYear}"
								readonly /></td>
							<td><input type="text" name="gvVacaDate"
								value="${gv.gvVacaDate}" /></td>
						</tr>
					</c:forEach>

				</c:if>

				<c:if test="${list.size() == 0}">
				<input type="hidden" name="gvKey" />
					<tr class="item1">
						<td><input type="text" name="gvYear" value="1" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="12" maxlength="2"/></td>
					</tr>
					<tr class="item2">
						<td><input type="text" name="gvYear" value="2" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="12" maxlength="2"/></td>
					</tr>
					<tr class="item3">
						<td><input type="text" name="gvYear" value="3" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="12" maxlength="2"/></td>
					</tr>
					<tr class="item4">
						<td><input type="text" name="gvYear" value="4" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item5">
						<td><input type="text" name="gvYear" value="5" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item6">
						<td><input type="text" name="gvYear" value="6" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item7">
						<td><input type="text" name="gvYear" value="7" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item8">
						<td><input type="text" name="gvYear" value="8" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item9">
						<td><input type="text" name="gvYear" value="9" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item10">
						<td><input type="text" name="gvYear" value="10" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item11">
						<td><input type="text" name="gvYear" value="11" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item12">
						<td><input type="text" name="gvYear" value="12" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item13">
						<td><input type="text" name="gvYear" value="13" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item14">
						<td><input type="text" name="gvYear" value="14" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item15">
						<td><input type="text" name="gvYear" value="15" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item16">
						<td><input type="text" name="gvYear" value="16" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item17">
						<td><input type="text" name="gvYear" value="17" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item18">
						<td><input type="text" name="gvYear" value="18" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item19">
						<td><input type="text" name="gvYear" value="19" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
					<tr class="item20">
						<td><input type="text" name="gvYear" value="20" readonly /></td>
						<td><input type="text" name="gvVacaDate" value="15" maxlength="2"/></td>
					</tr>
				</c:if>
			</table>
			<c:if test="${list.size() != 0}">
				<c:forEach items="${list}" var="gv">
						<c:set var="gvDate" value="${gv.gvDate}"></c:set>
						</c:forEach>
			<input type="text" id="Date" name="gvDate" value="${gvDate}"> 
				</c:if>
				<c:if test="${list.size() == 0}">
						<input type="text" id="Date" name="gvDate" value="">
				</c:if>
				<input type="submit" value="휴가 지급" />
		</form>
	</div>
</div>
</div>
</div>




	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
