<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.table-bordered{
		background:white;
		margin-top:30px;
	}
	.title, textarea{
		border:none;
		width:100%;
	}
	textarea{
		height:400px;
	}
	th{
		background:#bcbcbc;
	}
	.btn{
		border:1px solid #bcbcbc;
		background:white;
		margin-left:auto;
		margin-right:auto;
	}
</style>
<script>
	function wirteQnA(){
		$("#wirteQnA").submit();
		
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/include/left_column_companyAdmin.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <h1>
        문의사항
        <small>_작성</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
<div class="row" style="width:95%; margin-right:auto; margin-left:auto;">

<div class="asd">
<form action="writeQNA.do" id="wirteQnA" method="post" enctype="multipart/form-data">
	<table class="table table-bordered">
		<tr>
			<th style="width:100px; text-align:center;">제목</th>
			<td><input type="text" class="title" name="qTitle" /></td>
			<td style="width:100px;"><input type="file" name="file"/></td>
		</tr>
		<tr>
			<td class="wd" colspan="3"><textarea style="resize: none;" name="qContent" ></textarea></td>
		</tr>
	</table>
	<div class="Btn" onclick="wirteQnA();">문의하기</div>
</form>
</div>





</div>
</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>

</body>
</html>