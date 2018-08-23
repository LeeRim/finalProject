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
</style>
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

<h1>1:1 QNA 작성 페이지</h1>
<div class="asd">
<form action="writeQNA.do" method="post" enctype="multipart/form-data">
	<table border="1">
		<tr>
			<th><input type="text" value="제목" name="title"/></th>
		</tr>
		<tr>
			<td class="wd"><textarea style="resize: none;" name="qContent" rows="25" cols="80"></textarea></td>
		</tr>
		<tr>
			<td><input type="file" name="file"/></td>
		</tr>
	</table>
	<input type="submit" value="문의하기"/>
</form>
</div>





</div>
</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>

</body>
</html>