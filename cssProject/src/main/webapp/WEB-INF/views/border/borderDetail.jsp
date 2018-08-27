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
  	.commentWriteArea{
  		width:95%;
  		margin-left:auto;
  		margin-right:auto;
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
		location.href="borderUpdateForm.do?boardKey=${board.boardKey}" + "&currentPage=" + ${currentPage};
	}
	function deleteBoard(){
		if(confirm("삭제 하시겠습니까?")){
			location.href="deleteBoard.do?boardKey=${board.boardKey}" + "&bCateGory=${board.bCateGory}"
		}
	}
	function updateCommentForm(obj, flag){
		var bcot = $("#bcot").text().trim();
		console.log(bcot);
		
		
		$("#bcot").html("<input type='text' id='replyUpdate'/>");
		$("#replyUpdate").val(bcot);
		
		
		var $textArea = $(".form-control");
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
		var commentValue =  $("#replyUpdate").val();
		var cno = cno;
		//console.log("updateComment.do?cno=" + cno + "&content=" + commentValue);
		location.href
			="updateComment.do?commentKey=" + cno + "&cContent=" + commentValue + "&boardKey=${board.boardKey}";
	}
	function deleteComment(cno){
		var cno = cno;
		//console.log("updateComment.do?cno=" + cno + "&content=" + commentValue);
		if(confirm("삭제 하시겠습니까?")){
		location.href
			="deleteComment.do?commentKey=" + cno + "&boardKey=${board.boardKey}";
		}
	}
	</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/border/left_column_board.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
<div class="row" style="width:95%; margin-right:auto; margin-left:auto;">

	 <c:choose>
	 	<c:when test="${board.bCateGory eq 1}">
	 		<h3>공지사항</h3>
	 	</c:when>
	 	<c:when test="${board.bCateGory eq 2}">
	 		<h3>자유게시판</h3>
	 	</c:when>
	 	<c:when test="${board.bCateGory eq 3}">
	 		<h3>경조사</h3>
	 	</c:when>
	 </c:choose>
	 
	 
<!-- Main content -->
    <section class="content container-fluid">
       <div class="row" >
        <div class="col-md-6" style="width: 100%; ">
          <!-- Box Comment -->
          <div class="box box-widget" style="width:100%;">
            <div class="box-header with-border">
              <div class="user-block">
                <img class="img-circle" src="resources/dist/img/user1-128x128.jpg" alt="User Image">
                <span class="username">${board.bTitle }</span>
                <span class="description"><c:out value="${board.eName }"/></span>
              </div>
              <!-- /.user-block -->
              <div class="box-tools">
                    <br><br>
                    <span class="text-muted pull-right">작성일 : <c:out value="${board.bDate }"/></span>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="content">${board.bContent}</div>
              <button type="button" onclick="border();" class="btn btn-default btn-xs"><i class="fa fa-share"></i> 리스트</button>
              <c:if test="${user ne null && user.eKey eq board.bWriter}">
              <button type="button" onclick="bModifyPage();" class="btn btn-default btn-xs"><i class="fa fa-share"></i> 수정</button>
              <button type="button" onclick="deleteBoard();"class="btn btn-default btn-xs"><i class="fa fa-remove"></i> 삭제</button>
              </c:if>
            </div>
            <!-- /.box-body -->
            <div class="box-footer box-comments">
            <c:forEach items="${bList}" var="b">
            <!-- 이부분 반복 -->
              <div class="box-comment">
                <!-- User image -->
                <img class="img-circle img-sm" src="resources/dist/img/user3-128x128.jpg" alt="User Image">

                <div class="comment-text">
                      <span class="username">
                        ${sessionScope.user.eName} 사원
                        <span class="text-muted pull-right">${b.cDate}</span>
                        	<span class="text-muted pull-right">
                        		<button type="button" onclick="updateCommentForm(this, true);" class="btn btn-default btn-xs modifyBtn""><i class="fa fa-share"></i> 수정</button>
              					<button type="button" onclick="deleteComment(${b.commentKey});" class="btn btn-default btn-xs deleteBtn"><i class="fa fa-remove"></i> 삭제</button>
              					<button type="button" class="btn btn-default btn-xs updateBtn" style="display:none;" onclick="updateComment(this,${b.commentKey});"><i class="fa fa-share"></i>작성 완료</button>
								<button type="button" class="btn btn-default btn-xs cancelBtn" style="display:none;" onclick="updateCommentForm(this, false);"><i class="fa fa-share"></i>취소</button>
              				</span>
                      </span><!-- /.username -->
                  <span id="bcot">
                  	<c:out value="${b.cContent}"/>
                  </span>
                </div>
                <!-- /.comment-text -->
              </div>
              <!-- 이부분 반복 -->
              <!-- /.box-comment -->
            </c:forEach>
            </div>
            <!-- /.box-footer -->
            <c:if test="${!empty user}">
            <div class="box-footer">
              <form action="writeComment.do" method="post">
                <img class="img-responsive img-circle img-sm" src="resources/dist/img/user4-128x128.jpg" alt="Alt Text">
                <!-- .img-push is used to add margin to elements next to floating images -->
                <div class="img-push">
                  <input type="text" name="cContent" class="form-control input-sm" placeholder="댓글 작성후 Enter시 등록됩니다.">
                  <input type="hidden" name="boardKey" value='<c:out value="${board.boardKey}"/>'>
				  <input type="hidden" name="cWriter"	value="${board.bWriter }"/>
                </div>
              </form>
            </div>
            </c:if>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
       
      </div>
      <!-- /.row -->
    </section>
    
    </div>
 </div>
 </div>


<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>