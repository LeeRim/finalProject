<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
  	.commentWriteArea{
  		width:95%;
  		margin-left:auto;
  		margin-right:auto;
  	}
</style>
<script>
	function bGalleryModifyPage(){
		location.href="bGalleryModifyPage.do?attaKey=${attach.attaKey}";
	}
	function deleteGalleryBoard(){
		if(confirm("삭제 하시겠습니까?")){
			location.href="deleteBoardGallery.do?attaKey=${attach.attaKey}"
		}
	}
	function border(){
		location.href="borderGalleryList.do";		
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

<h1>갤러리 디테일 화면</h1>
<div class="main">
	 <table class="contentT">
		<tr class="tr1">
			<td style="width:5px;"></td>
			<td colspan="3">${attach.bTitle }</td>
		</tr>
		<tr class="tr2">
			<td style="width:5px;"></td>
			<td style="width:200px;"> 작성자 : <c:out value="${attach.eName }"/></td>
			<td style="width:200px;"> 작성일 : <c:out value="${attach.bDate }"/></td>
		</tr>
	 </table>
	 <br>
	 <br>
</div>
	<div class="boardContent">
		${attach.bContent}
	 </div>
	 </div>
<div class="Btns">

	<c:if test="${user ne null && user.eKey eq attach.bWriter}">
		<div class="Btn mod" onclick="bGalleryModifyPage();">수정하기</div>
		<div class="Btn del" onclick="deleteGalleryBoard();">삭제하기</div>
	</c:if>
	<div class="Btn" onclick="border();">돌아가기</div>
</div>
<br>
<br>
	</div>
</div>


<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>