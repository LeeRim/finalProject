<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
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
  	.rpyText{
  		width:80%;
  	}
  	.content{
  		height:500px;
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
	function updateCommentForm(obj, flag, index){
		var bcot = $("#bcot" + index).text().trim(); 
		var bcotSpan = $("#bcot" + index);
		
		$("#replyUpdate" + index).val(bcot);
		$("#bcot" + index).css("display", "none");
		$("#replyUpdate" + index).css("display", "block");
		/* $(replyUpdate).val(bcotSpan.html()); */
		
		var $textArea = 	$("#replyUpdate" + index);
		$textArea.prop("readonly", !flag);
		if(flag){
			$(obj).hide();
			$(obj).siblings(".deleteBtn").hide();
			$(obj).siblings(".updateBtn").show();
			$(obj).siblings(".cancelBtn").show();
		}else{
			$("#replyUpdate" + index).css("display", "none");
			$("#bcot" + index).css("display", "block");
			
			$(obj).siblings(".modifyBtn").show();
			$(obj).siblings(".deleteBtn").show();
			$(obj).siblings(".updateBtn").hide();
			$(obj).hide();
		}
	}
	
	function updateComment(obj, cno, index){
		//댓글 작성 -> 댓글 번호, 댓글 내용
		var replyUpdate = "#replyUpdate" + index;
		var commentValue =  $(replyUpdate).val();
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
	<div class="content-wrapper" style="height:980px;">
	<section class="content-header">
      <h1>
        게시판
	 <c:choose>
	 	<c:when test="${board.bCateGory eq 1}">
	 		<small>공지사항</small>
	 	</c:when>
	 	<c:when test="${board.bCateGory eq 2}">
	 		<small>자유게시판</small>
	 	</c:when>
	 	<c:when test="${board.bCateGory eq 3}">
	 		<small>경조사</small>
	 	</c:when>
	 </c:choose>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
<div class="row" style="width:95%; margin-right:auto; margin-left:auto;">

	 
	 
<!-- Main content -->
    <section class="content container-fluid">
       <div class="row" style="margin-top:10px;">
        <div class="col-md-6" style="width: 100%; ">
          <!-- Box Comment -->
          <div class="box box-widget" style="width:100%;">
            <div class="box-header with-border">
              <div class="user-block">
                <img class="img-circle" src="resources/upload/empPhoto/${board.ePhoto}" alt="User Image">
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
            <c:forEach items="${bList}" var="b" varStatus="status">
            <!-- 이부분 반복 -->
              <div class="box-comment">
                <!-- User image -->
                <img class="img-circle img-sm" src="resources/upload/empPhoto/${b.user.ePhoto}" alt="User Image">

                <div class="comment-text">
                      <span class="username">
                        ${b.user.eName}
                        <span class="text-muted pull-right">${b.cDate}</span>
                        	<span class="text-muted pull-right">
                        		<button type="button" onclick="updateCommentForm(this, true, ${status.index });" class="btn btn-default btn-xs modifyBtn""><i class="fa fa-share"></i> 수정</button>
              					<button type="button" onclick="deleteComment(${b.commentKey});" class="btn btn-default btn-xs deleteBtn"><i class="fa fa-remove"></i> 삭제</button>
              					<button type="button" class="btn btn-default btn-xs updateBtn" style="display:none;" onclick="updateComment(this,${b.commentKey}, ${status.index } );"><i class="fa fa-share"></i>작성 완료</button>
								<button type="button" class="btn btn-default btn-xs cancelBtn" style="display:none;" onclick="updateCommentForm(this, false,  ${status.index });"><i class="fa fa-share"></i>취소</button>
              				</span>
                      </span><!-- /.username -->
                  <span id="bcot${status.index }">
                  	<c:out value="${b.cContent}"/>
                  </span>
                 	<input type="text"  class="rpyText" id="replyUpdate${status.index }" value="<c:out value='${b.cContent }'/>" style="display:none;"/>
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
                <img class="img-responsive img-circle img-sm" src="resources/upload/empPhoto/${sessionScope.user.ePhoto}" alt="Alt Text">
                <!-- .img-push is used to add margin to elements next to floating images -->
                <div class="img-push">
                  <input type="text" name="cContent" class="form-control input-sm" placeholder="댓글 작성후 Enter시 등록됩니다.">
                  <input type="hidden" name="boardKey" value='<c:out value="${board.boardKey}"/>'>
				  <input type="hidden" name="cWriter"	value="${user.eKey }"  />
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