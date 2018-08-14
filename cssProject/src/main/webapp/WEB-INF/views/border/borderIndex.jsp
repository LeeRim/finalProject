<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/views/include/header.jsp" />
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.bordName{
		margin-left:10px;
		font-size:17px;
		font-weight:bold;
	}
	.table, th{
		text-align:center;
		background:white;
	}
	.no{
		width:200px;
	}
	.bindex{
		display:inline-block;
		width:45%;
		margin-left:60px;
	}
	.date,.writer{
		width:150px;
	}
	th{
		background:gray;
		color:white;
	}
	.image{
		display:inline-block;
	}
</style>
<script>
	$(function(){
	   $(".box-body td").mouseenter(function(){
	      $(this).parent().css("background","darkgray");
	      $(this).parent().css("cursor","pointer");
	   }).mouseout(function(){
	      $(this).parent().css("background","white");
	   }).click(function(){
	      var boardNo = $(this).parent("tr").data("key");
	      location.href = "selectBoard.do?boardKey=" + boardNo + "&currentPage=1";       
	   });
	});
	
	 $(function(){
		   $(".Attach td").mouseenter(function(){
		      $(this).parent().css("background","darkgray");
		      $(this).parent().css("cursor","pointer");
		   }).mouseout(function(){
		      $(this).parent().css("background","white");
		   }).click(function(){
		      var attach = $(this).parent("tr").data("key");
		      location.href = "attachDetailPage.do?attaKey=" + attach;    
		   });
		});  
	
	function border(b){
		location.href="borderList.do?bCateGory=" + b;
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<c:import url="/WEB-INF/views/border/left_column_board.jsp"/>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					Data Tables <small>advanced tables</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Tables</a></li>
					<li class="active">Data tables</li>
				</ol>
			</section>
			<div class="row" style="width:100%; margin-right:auto; margin-left:auto; margin-top:50px;">
				<div class="bindex">
				<div class="box-body table-responsive no-padding">
					<c:choose>
						<c:when test="${bo1 eq 1}">
							<span class="bordName">공지사항</span>
							<div class="image" onclick="border(1);">
							<img src="resources/upload/image/image2.png" 
									width="100px" height="50px" onclick="border(1);"/>
							</div>
						</c:when>
					</c:choose>
					<table class="table table-hover">
						<tr>
							<th class="title">글제목</th>
							<th class="writer">작성자</th>
							<th class="date">작성일</th>
						</tr>
						<c:forEach items="${board1}" var="board1" varStatus="status">
							<tr data-key=${board1.boardKey }>
								<td class="title"><c:out value="${board1.bTitle }" /></td>
								<td class="writer"><c:out value="${board1.eName }" /></td>
								<td class="date"><c:out value="${board1.bDate }" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br><br>
				<div class="box-body table-responsive no-padding">
				<c:choose>
					<c:when test="${bo2 eq 2}">
						<span class="bordName">자유게시판</span>
							<div class="image" onclick="border(2);">
							<img src="resources/upload/image/image2.png" 
									width="100px" height="50px"/>
							</div>
					</c:when>
				</c:choose>

					<table class="table table-hover">
						<tr>
							<th class="title">글제목</th>
							<th class="writer">작성자</th>
							<th class="date">작성일</th>
						</tr>
						<c:forEach items="${board2}" var="board2" varStatus="status">
							 <tr data-key="${board2.boardKey }">
								<td class="title"><c:out value="${board2.bTitle }" /></td>
								<td class="writer"><c:out value="${board2.eName }" /></td>
								<td class="date"><c:out value="${board2.bDate }" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
			<div class="bindex">
				<div class="box-body table-responsive no-padding">
				<c:choose>
					<c:when test="${bo3 eq 3}">
						<span class="bordName">경조사 게시판</span>
						<div class="image" onclick="border(3);">
							<img src="resources/upload/image/image2.png" 
									width="100px" height="50px"/>
						</div>
					</c:when>
				</c:choose>

					<table class="table table-hover">
						<tr>
							<th class="title">글제목</th>
							<th class="writer">작성자</th>
							<th class="date">작성일</th>
						</tr>
						<c:forEach items="${board3}" var="board3" varStatus="status">
							 <tr data-key="${board3.boardKey}">
								<td class="title"><c:out value="${board3.bTitle}" /></td>
								<td class="writer"><c:out value="${board3.eName}" /></td>
								<td class="date"><c:out value="${board3.bDate}" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<br><br>
				<div class="box-body table-responsive no-padding">
				<div class="Attach">
				<c:choose>
					<c:when test="${bo4 eq 4}">
						<span class="bordName">앨범 게시판</span>
						<div class="image" onclick="border(4);">
							<img src="resources/upload/image/image2.png" 
									width="100px" height="50px"/>
						</div>
					</c:when>
				</c:choose>
				
					<table class="table table-hover">
						<tr>
							<th class="title">글제목</th>
							<th class="writer">작성자</th>
							<th class="date">작성일</th>
						</tr>
						<c:forEach items="${attach}" var="att">
							 <tr data-key="${att.attaKey}">
								<td class="title"><c:out value="${att.bTitle}" /></td>
								<td class="writer"><c:out value="${att.eName}" /></td>
								<td class="date"><c:out value="${att.bDate}" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				</div>
				</div>
			</div>
		</div>
	</div>


	<c:import url="../include/footer.jsp" />
</body>
</html>