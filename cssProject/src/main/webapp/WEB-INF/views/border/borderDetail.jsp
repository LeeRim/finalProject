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
		location.href="borderList.do?bCateGory=${board.bCateGory}";
	}
	</script>
</head>
<body>

<form action="updateBorder.do" method="post" enctype="multipart/form-data">
<input type="hidden" name=boardKey value="<c:out value='${board.boardKey }' />">
제목 : <input type="text" name="bTitle" value="${board.bTitle }"/>
내용 : <textarea id="summernote" name="bContent">${board.bContent }</textarea>
<input type="submit" value="수정"/>
<input type="button" value="취소" onclick="border();"/>
</form>


<c:import url="../include/footer.jsp"/>
</body>
</html>