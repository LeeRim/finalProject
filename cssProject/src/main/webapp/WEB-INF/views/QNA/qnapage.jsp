<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function listread(){
	location.href="back.do";
}
$(function(){
	$(".box-body td").mouseenter(function(){
		$(this).parent().css("background","darkgray");
		$(this).parent().css("cursor","pointer");
	}).mouseout(function(){
		$(this).parent().css("background","white");
	}).click(function(){
		var boardNo = $(this).parent().children().eq(0).text();
		var eType = "${user.eType}";
		if(eType == 1){
			location.href="selectQNA.do?qKey=" + boardNo;		
		}else{
			location.href="updateQNA.do?qKey=" + boardNo;
		}
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

<h1>QNA 보여질 화면</h1>
<div class="box-body table-responsive no-padding">
<form action="QNA.do" method="post">
	<table border="1">
			<tr>
				<th colspan="2">질문</th>
			</tr>
			<c:forEach items="${list}" var="QNA">
			<tr>
				<td>
					<c:out value="${QNA.qKey}"></c:out>
				</td>
				<td>
					<c:out value="${QNA.qContent}"></c:out>
					<c:set var="qWriterFk" value="${gv.qWriterFk}"></c:set>
				</td>
			</tr>
			</c:forEach> 
	</table>
	<input type="submit" value="문의하기"/>
	<input type="button" value="목록으로" onclick="listread();"/>
</form>
</div>




</div>
</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>