<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.row{
		margin-left:auto;
		margin-right:auto;
		width:40%;
		display:inline-block;
	}
	.row-wrapper{
		margin-left:250px;
		margin-top:30px;
	}
	.year, .day{
		text-align:center;
	}
	input[type=text]{
		border:none;
		text-align:center;
		background:none;
	}
	.btn{
		border:1px solid #bcbcbc;
		background:none;
	}
</style>
<script>
function subV(){
	$("#subV").submit();
}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/include/left_column_companyAdmin.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <h1>
       휴가
        <small>지급</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Table	s</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
	<div class="row-wrapper">
		<form id="subV" action="writeGiveVaction.do" method="post">
		<div class="row">
			<table id="table1" class="table table-bordered ">
				<tr>
					<td class="year">근로년수</td>
					<td class="day">지급일수</td>
				</tr>
				
				<c:if test="${list.size() != 0}">
					<c:forEach items="${list}" var="gv" varStatus="status">
								<c:if test="${status.count le 10}">
						<input type="hidden" name="gvKey" value="${gv.gvKey }" />
							<tr class="item1">
									<td class="year"><input type="text" name="gvYear" value="${gv.gvYear}" readonly /></td>
									<td class="day"><input type="text" name="gvVacadate" value="${gv.gvVacadate}" /></td>
							</tr>
								</c:if>
					</c:forEach>
				</c:if>

				<c:if test="${list.size() == 0}">
					<tr class="item1">
						<td class="year"><input type="text" name="gvYear" value="1" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="12" /></td>
					</tr>
					<tr class="item2">
						<td class="year"><input type="text" name="gvYear" value="2" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="12" /></td>
					</tr>
					<tr class="item3">
						<td class="year"><input type="text" name="gvYear" value="3" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="12" /></td>
					</tr>
					<tr class="item4">
						<td class="year"><input type="text" name="gvYear" value="4" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item5">
						<td class="year"><input type="text" name="gvYear" value="5" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item6">
						<td class="year"><input type="text" name="gvYear" value="6" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item7">
						<td class="year"><input type="text" name="gvYear" value="7" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item8">
						<td class="year"><input type="text" name="gvYear" value="8" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item9">
						<td class="year"><input type="text" name="gvYear" value="9" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item10">
						<td class="year"><input type="text" name="gvYear" value="10" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
				</c:if>
			</table>
			</div>
			
			<div class="row">
				<table id="table1" class="table table-bordered ">
				<tr>
					<td class="year">근로년수</td>
					<td class="day">지급일수</td>
				</tr>
				
				<c:if test="${list.size() != 0}">
					<c:forEach items="${list}" var="gv" varStatus="status">
								<c:if test="${status.count gt 10}">
						<input type="hidden" name="gvKey" value="${gv.gvKey }" />
							<tr class="item1">
									<td class="year"><input type="text" name="gvYear" value="${gv.gvYear}" readonly /></td>
									<td class="day"><input type="text" name="gvVacadate" value="${gv.gvVacadate}" /></td>
							</tr>
								</c:if>
					</c:forEach>
				</c:if>
				
				<c:if test="${list.size() == 0}">
					<tr class="item11">
						<td class="year"><input type="text" name="gvYear" value="11" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item12">
						<td class="year"><input type="text" name="gvYear" value="12" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item13">
						<td class="year"><input type="text" name="gvYear" value="13" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item14">
						<td class="year"><input type="text" name="gvYear" value="14" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item15">
						<td class="year"><input type="text" name="gvYear" value="15" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item16">
						<td class="year"><input type="text" name="gvYear" value="16" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item17">
						<td class="year"><input type="text" name="gvYear" value="17" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item18">
						<td class="year"><input type="text" name="gvYear" value="18" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item19">
						<td class="year"><input type="text" name="gvYear" value="19" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
					<tr class="item20">
						<td class="year"><input type="text" name="gvYear" value="20" readonly /></td>
						<td class="day"><input type="text" name="gvVacadate" value="15" /></td>
					</tr>
				</c:if>
			</table>
			</div>
			<div class="btn" onclick="subV();">휴가 지급</div>
		</form>
		</div>
</div>
</div>




	<c:import url="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
