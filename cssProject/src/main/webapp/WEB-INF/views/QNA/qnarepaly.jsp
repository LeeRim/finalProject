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

<h1>답변 달수 있는 화면</h1>
<form action="updateQNA.do" method="post">
	<table>
		<tr>
			<th>질문 : ${qv.qContent}</th>
		</tr>
		<tr>
			<td>답변 : <textarea style="resize: none;" name="qAnswer" rows="25" cols="80"></textarea></td>
		</tr>
	</table>
	<input type="hidden" name="qContent" value="${qv.qContent}"/>
	<input type="hidden" name="qAnswer" value="${qv.qAnswer}"/>
	<input type="hidden" name="qKey" value="${qKey}"/>
	<input type="submit" value="답변 완료"/>
	<input type="button" value="메인" onclick="listread();"/>
</form>
</div>
</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>