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
  	.rpyText{
  		width:80%;
  	}
  	.bcontent{
  		width:1500px;
  		height:500px;
  	}
  	.row{
  		width:100%;
  		margin-left:180px;
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
	function writeComment(){
		$("#commentForm").submit();
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
		location.href
			="deleteComment.do?commentKey=" + cno + "&boardKey=${attach.boardKey}";
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/border/left_column_board.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <h1>
       게시판
        <small>_갤러리게시판</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Table	s</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

<!-- Main content -->
    <section class="content container-fluid">
       <div class="row" style="margin-top:20px;">
        <div class="col-md-6" >
          <!-- Box Comment -->
          <div class="box box-widget">
            <div class="box-header with-border">
              <div class="user-block">
                <img class="img-circle" src="resources/upload/empPhoto/${board.ePhoto}" alt="User Image">
                <span class="username">${attach.bTitle}</span>
                <span class="description"><c:out value="${attach.eName }"/></span>
              </div>
              <!-- /.user-block -->
              <div class="box-tools">
                    <br><br>
                    <span class="text-muted pull-right">작성일 : <c:out value="${attach.bDate }"/></span>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            
             <div class="bcontent">
             <img src="resources/upload/boardGallery/${Attach.attaFileName}" width="510px" height="150px"/><br>
              ${attach.bContent}</div>
              <button type="button" onclick="border();" class="btn btn-default btn-xs"><i class="fa fa-share"></i> 리스트</button>
              <c:if test="${user ne null && user.eKey eq attach.bWriter}">
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
                <img class="img-circle img-sm" src="resources/upload/empPhoto/${b.user.ePhoto}" alt="User Image">

                <div class="comment-text">
                      <span class="username">
                        ${attach.eName} 
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
                 	<input type="text" class="rpyText" id="replyUpdate${status.index }" value="<c:out value='${b.cContent }'/>" style="display:none;"/>
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
                  <input type="hidden" name="boardKey" value='<c:out value="${attach.boardKey}"/>'>
				  <input type="hidden" name="cWriter"	value="${user.eKey }"/>
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


<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>