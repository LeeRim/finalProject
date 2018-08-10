<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<link href="resources/Js/summernote.css" rel="stylesheet">
<script src="resources/Js/summernote.js"></script>
<script type="resources/Js/summernote-ko-KR.js"></script>
<style>
	.bTitle{
		width:95%;
	}
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
	function writeBoard(){
		$("#writeBoard").submit();
	}
	
	/* function(){
		
		var bTitle = $("#bTitle").val();
		if( bTitle == "" || bTitle == null || bTitle == undefined || ( bTitle != null && typeof bTitle == "object" && !Object.keys(bTitle).length ) ){
			return true; 
		}else{
			alert("값이 다 채워지지 않았습니다.");
			return false;
		}

		var summernote = $("#summernote").val();
		if( summernote == "" || summernote == null || summernote == undefined || ( summernote != null && typeof summernote == "object" && !Object.keys(summernote).length ) ){
			return true; 
		}else{
			return false;
		} */
		
		
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
	 <!-- Content Header (Page header) -->
		<c:out value="${board.bCateGory}"/>작성<br>
		<form id="writeBoard"action="writeBoard.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="bCateGory" value="<c:out value="${board.bCateGory}"/>"/>
			<input type="hidden" name="companyKey" value='<c:out value="${user.cKeyFk}"></c:out>'>
			<input type="hidden" name="bWriter" value='<c:out value="${user.eKey }"></c:out>'>
			제목 : <input type="text" id="bTitle" name="bTitle" class="bTitle"/><br><br>
			<textarea id="summernote" name="bContent"></textarea>
			<div class="Btns">
				<div class="Btn" onclick="writeBoard();">작성</div>
				<div class="Btn" onclick="border();">취소</div>
			</div>
		</form>
	</div>
	</div>
</div>


<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>