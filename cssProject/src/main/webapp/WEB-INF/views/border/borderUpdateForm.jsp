<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="../include/header.jsp"/>
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
	<script type="text/javascript">
	$(function() {
	  $('#summernote').summernote({
		  height: 600,
		  lang: 'ko-KR'
	  });
	});
	function border(){
		location.href="selectBoard.do?boardKey=${board.boardKey }" + "&currentPage=${currentPage}";
	}
	/* function validate(){
		var bTitle = $("#bTitle").val();
		if( bTitle == "" || bTitle == null){
			console.log(111111111111111);
			return false;
		}
		var summernote = $("#summernote").val();
		if(!(summernote != null && summernote != "")){
			console.log(2, summernote);
				return false;
		}
		
		return true;
	}  */
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
<form action="updateBorder.do" onsubmit="return validate();" method="post" enctype="multipart/form-data">
<input type="hidden" name="bCateGory" value='<c:out value="${board.bCateGory}"/>'>
<input type="hidden" name=boardKey value="<c:out value='${board.boardKey }' />">
제목 : <input type="text" id="bTitle" name="bTitle" value="${board.bTitle }"/>
<textarea id="summernote" name="bContent">${board.bContent }</textarea>
<input type="submit" value="수정"/>
<input type="button" value="취소" onclick="border();"/>
</form>
	</div>
	</div>
</div>

<c:import url="../include/footer.jsp"/>
</body>
</html>