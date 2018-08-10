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
		float:right;
	}
	.contentT {
    	width: 100%;
  		background:white; 
  	}
  	.tr1,.tr2{
  		border-top:1px solid #bcbcbc;
  		border-bottom:1px solid #bcbcbc;
  	}
  	.tr1{
  		font-weight: bold;
  	}
  	td{
  		padding:5px;
  	}
  	.del{
  		background:#d60c45;
  		color:white;
  	}
  	.mod{
  		background:#1055cc;
  		color:white;
  	}
  	.boardContent{
  		background:white;
  	}
  	.main{
  		background:white;
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
		location.href="borderList.do?bCateGory=${board.bCateGory}" + "&currentPage=" + ${currentPage};
	}
	function writeComment(){
		$("#commentForm").submit();
	}
	function bModifyPage(){
		location.href="borderUpdateForm.do?boardKey=${board.boardKey}"
	}
	function writeComment(){
		$("#commentForm").submit();
	}
	function deleteBoard(){
		if(confirm("삭제 하시겠습니까?")){
			location.href="deleteBoard.do?boardKey=${board.boardKey}"
		}
	}
	function bModifyPage(){
		location.href="borderUpdateForm.do?boardKey=${board.boardKey}"
	}
	function writeComment(){
		$("#commentForm").submit();
	}
	function deleteBoard(){
		if(confirm("삭제 하시겠습니까?")){
			location.href="deleteBoard.do?boardKey=${board.boardKey}" + "&bCateGory=${board.bCateGory}"
		}
	}
	function updateCommentForm(obj, flag){
		var $textArea = $(obj).parent().parent().next().find("textarea");
		$textArea.prop("readonly", !flag);
		if(flag){
			$(obj).hide();
			$(obj).siblings(".deleteBtn").hide();
			$(obj).siblings(".updateBtn").show();
			$(obj).siblings(".cancelBtn").show();
		}else{
			$(obj).siblings(".modifyBtn").show();
			$(obj).siblings(".deleteBtn").show();
			$(obj).siblings(".updateBtn").hide();
			$(obj).hide();
		}
	}
	
	function updateComment(obj, cno){
		//댓글 작성 -> 댓글 번호, 댓글 내용
		var commentValue =  $(obj).parent().parent().next().find("textarea").val();
		var cno = cno;
		//console.log("updateComment.do?cno=" + cno + "&content=" + commentValue);
		location.href
			="updateComment.do?commentKey=" + cno + "&cContent=" + commentValue + "&boardKey=${board.boardKey}";
	}
	function deleteComment(cno){
		var cno = cno;
		//console.log("updateComment.do?cno=" + cno + "&content=" + commentValue);
		location.href
			="deleteComment.do?commentKey=" + cno + "&boardKey=${board.boardKey}";
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
<div class="row" style="width:95%; margin-right:auto; margin-left:auto; margin-top:20px;">

	 <c:choose>
	 	<c:when test="${board.bCateGory eq 1}">
	 		<h1>공지사항</h1>
	 	</c:when>
	 	<c:when test="${board.bCateGory eq 2}">
	 		<h1>자유게시판</h1>
	 	</c:when>
	 	<c:when test="${board.bCateGory eq 3}">
	 		<h1>경조사</h1>
	 	</c:when>
	 </c:choose>
<div class="main">
	 <table class="contentT">
		<tr class="tr1">
			<td style="width:5px;"></td>
			<td colspan="3">${board.bTitle }</td>
		</tr>
		<tr class="tr2">
			<td style="width:5px;"></td>
			<td style="width:200px;"> 작성자 : <c:out value="${board.eName }"/></td>
			<td style="width:200px;"> 작성일 : <c:out value="${board.bDate }"/></td>
			<td> 조회수 : <span class="label label-danger"><c:out value="${board.bCount }"/></span></td>
		</tr>
	 </table>
	 <br>
	 <br>
</div>
	<div class="boardContent">
		${board.bContent}
	 </div>
	 </div>
<div class="Btns">

	<c:if test="${user ne null && user.eKey eq board.bWriter}">
	<div class="Btn mod" onclick="bModifyPage();">수정하기</div>
	<div class="Btn del" onclick="deleteBoard();">삭제하기</div>
	</c:if>
	<div class="Btn" onclick="border();">돌아가기</div>
</div>
<br>
<br>
<div class="commentArea">
		<table width="800">
			<c:forEach items="${bList}" var="b">
			<tr>
				<td>${b.eName} ${b.cDate}</td>
				<td align="right">
				<c:if test="${!empty user && user.eKey eq b.cWriter}">
					<input type="button" class="modifyBtn" value="수정" onclick="updateCommentForm(this, true);"/>
					<input type="button" class="deleteBtn" value="삭제" onclick="deleteComment(${b.commentKey});"/>
					<input type="button" class="updateBtn" style="display:none;" value="작성 완료" onclick="updateComment(this,${b.commentKey});"/>
					<input type="button" class="cancelBtn" style="display:none;" value="취소" onclick="updateCommentForm(this, false);"/>
				</c:if>
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
	<c:if test="${!empty user}">
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
						<input type="button" onclick="writeComment();" value="댓글작성"/>
					</td>
				</tr>
			</table>		
		</form>
	</div>
	</c:if>
	</div>
	</div>
</div>


<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>