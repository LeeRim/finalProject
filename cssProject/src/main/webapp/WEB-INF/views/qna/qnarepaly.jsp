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
	textarea{
		border:none;
		width:100%;
		height:100%;
	}
	.tt{
		margin:0 auto;
		text-align:center;
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
function qnaList(){
	location.href="qnaList.do";
}
function updateQNA(){
	$("#updateQNA").submit();
}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/border/left_column_board.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <h1>
        QnA
        <small>_답변하기</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
<div class="row" style="width:95%; margin-right:auto; margin-left:auto;">

<form action="updateQNA.do" id="updateQNA" method="post">
	<table id="example2" class="table table-bordered tt" style="background:white; margin-top:20px;">
	<tr >
		<th style="text-align:center; ">제목</th>
		<th style="width:300px; text-align:center">질문등록일</th>
	</tr>
	<tr >
		<td style="text-align:center; ">${qv.qTitle}</td>
		<td style="width:300px; text-align:center">${qv.qDate }</td>
	</tr>
	<tr>
		<td colspan="2" style="height:100px;">${qv.qContent}</td>
	</tr>
</table>

<table id="example2" class="table table-bordered " style="background:white; margin-top:20px;">
		<tr >
			<th style="text-align:center; ">답변 </th>
			<th style="width:100px; text-align:center; ">답변등록일</th>
			<td style="width:200px; text-align:center; ">${qv.aDate }</td>
		</tr>
		<tr>
			<td colspan="3" style="vertical-align:middle; text-align:center; width:300px; height:300px;">
				<c:if test="${qv.qAnswer == null }">
					<textarea style="resize: none;" name="qAnswer"></textarea>
				</c:if>
				<c:if test="${qv.qAnswer != null }">
					<textarea style="resize: none;" name="qAnswer"  readonly>${qv.qAnswer}</textarea>
				</c:if>
			</td>
		</tr>
</table>
	<input type="hidden" name="qContent" value="${qv.qContent}"/>
	<input type="hidden" name="qKey" value="${qKey}"/>
	<c:if test="${qv.qAnswer == null}">
	<div class="Btn" onclick="updateQNA();">답변작성</div>
	</c:if>
	<div onclick="qnaList();" class="btn btn-default btn-xs modifyBtn"" style="width:100px; padding:5px;;"><i class="fa fa-share"></i>목록으로</div>
</form>
<c:if test="${!empty qnaAttach }">
첨부파일 :  ${qnaAttach.attaFileName }
<a href="resources/upload/boardGallery/${qnaAttach.attaFileName}" download><button>다운로드</button></a>
</c:if>
</div>
</div>
</div>

<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>