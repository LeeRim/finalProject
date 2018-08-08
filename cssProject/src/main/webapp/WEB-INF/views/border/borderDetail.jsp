<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="resources/Js/summernote.css" rel="stylesheet">
<script src="resources/Js/summernote.js"></script>
<script type="resources/Js/summernote-ko-KR.js"></script>
<style>
	.Btn{
		border:1px solid #bcbcbc;
		padding:5px;
		margin-left:auto;
		margin-right:auto;
		background:white;
	}
	.Btns{
		margin-right:auto;
		margin-left:auto;
		text-align:center;
		margin-bottom:10px;
	}
</style>
	<script type="text/javascript">
	$(function() {
	  $('#summernote').summernote({
		  height: 600,
		  lang: 'ko-KR'
	  });
	});
	function border(){
		location.href="borderList.do?bCateGory=${board.bCateGory}";
	}
	function bModifyPage(){
		location.href="borderUpdateForm.do?boardKey=${board.boardKey}"
	}
	function writeComment(){
		$("#commentForm").submit();
	}
	</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/include/left_column.jsp"/>
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
<div class="row" style="width:95%; margin-right:auto; margin-left:auto; margin-top:20px;">
제목 : ${board.bTitle }<br>
조회수 : <span class="label label-danger"><c:out value="${board.bCount }"/></span><br>
작성자 : <c:out value="${board.eName }"/><br>
작성일 : <c:out value="${board.bDate }"/><br>
내용 : ${board.bContent }
<div class="Btns">
	<div class="Btn" onclick="bModifyPage();">수정하기</div>
	<div class="Btn" onclick="border();">취소</div>
</div>

<div class="commentArea">
		<table width="800">
				<!-- 이름(작성일)  ---------------------<수정하기, 삭제하기> -->
				<!-- 댓글 내용 															-->
			<c:forEach items="${bList}" var="b">
			<tr>
				<td>${b.eName} ${b.cDate}</td>
				<td align="right">
					<input type="button" class="modifyBtn" value="수정" onclick="updateCommentForm(this, true);"/>
					<input type="button" class="deleteBtn" value="삭제" onclick="deleteComment(${b.commentKey});"/>
					<input type="button" class="updateBtn" style="display:none;" value="작성 완료" onclick="updateComment(this,${b.commentKey});"/>
					<input type="button" class="cancelBtn" style="display:none;" value="취소" onclick="updateCommentForm(this, false);"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea cols="108" rows="4" readonly><c:out value="${b.cContent}"/></textarea>
				</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<%-- <c:if test="${!user empty}"> --%>
	<div class="commentWriteArea">
		댓글
		<form method="post" id="commentForm" action="writeComment.do">
			<table width="800">
				<input type="hidden" name="boardKey" value='<c:out value="${board.boardKey}"/>'>
				<input type="hidden" name="cWriter"	value="${board.bWriter }"/> 
				<tr>
					<td>
						<textarea cols="90" rows="4" name="cContent"></textarea>
					</td>
					<td>
						<!-- <input type="submit" value="댓글작성"/> -->
						<input type="button" onclick="writeComment();" value="댓글작성"/>
					</td>
				</tr>
			</table>		
		</form>
	</div>
	<%-- </c:if> --%>
	</div>
	</div>
</div>


<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>