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
		location.href="borderList.do?bCateGory=${board.bCateGory}" + "&currentPage=" + ${currentPage};
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
 <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        게시판
        <small>
        <c:choose>
			<c:when test="${bCateGory eq 1}">
				공지사항
			</c:when>
			<c:when test="${bCateGory eq 2}">
				자유게시판
			</c:when>
			<c:when test="${bCateGory eq 3}">
				경조사
			</c:when>
		</c:choose>
        </small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">게시판</a></li>
        <li class="active">게시판</li>
      </ol>
    </section>

<form action="updateBorder.do" method="post" enctype="multipart/form-data">
<input type="hidden" name=boardKey value="<c:out value='${board.boardKey }' />">
제목 : <input type="text" name="bTitle" value="${board.bTitle }"/>
내용 : <textarea id="summernote" name="bContent">${board.bContent }</textarea>
<input type="submit" value="수정"/>
<input type="button" value="취소" onclick="border();"/>
</form>

</div>
</div>
<c:import url="../include/footer.jsp"/>
</body>
</html>