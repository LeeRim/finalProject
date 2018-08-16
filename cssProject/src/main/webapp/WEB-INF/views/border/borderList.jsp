<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- DataTables -->
<script src="resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<!-- <script type="text/javascript" src="resources/Js/jquery-3.3.1.min.js"></script> -->
<!-- <link rel="stylesheet" href="resources/bower_components/bootstrap/dist/css/bootstrap.min.css"> -->
  <!-- Font Awesome -->
<!--   <link rel="stylesheet" href="resources/bower_components/font-awesome/css/font-awesome.min.css"> -->
  <!-- Ionicons -->
<!--   <link rel="stylesheet" href="resources/bower_components/Ionicons/css/ionicons.min.css"> -->
  <!-- Theme style -->
<!--   <link rel="stylesheet" href="resources/dist/css/AdminLTE.min.css"> -->
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
<!--   <link rel="stylesheet" href="resources/dist/css/skins/skin-blue.min.css"> -->

  <!-- Google Font -->
<!--   <link rel="stylesheet" -->
<!--         href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
        
   <!-- jQuery 3 -->
<!-- 	<script src="resources/bower_components/jquery/dist/jquery.min.js"></script> -->
	<!-- Bootstrap 3.3.7 -->
<!-- 	<script src="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script> -->
	<!-- AdminLTE App -->
<!-- 	<script src="resources/dist/js/adminlte.min.js"></script> -->
	<!-- DataTables -->
<script src="resources/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="resources/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="resources/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="resources/dist/js/demo.js"></script>
<script src="resources/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	
  
<!-- DataTables -->
<!-- FastClick -->
	<!-- REQUIRED JS SCRIPTS -->
<style>

	.page{
		margin-right:auto;
		margin-left:auto;
		text-align:center;
	}
	.write{
		margin-top:10px;
		margin-left:5px;
		margin-bottom:10px;
	}
	.Btn{
		border:1px solid #bcbcbc;
		padding:5px;
		margin-left:5px;
		margin-bottom:5px;
	}
	.pageBtn{
		border:1px solid #bcbcbc;
		paddgin:5px;
		width:25px;
		display:inline-block;
		background:white;
		text-align:center;
		cursor:pointer;
		
	}
	.pageBtnDiv{
		margin-right:auto;
		margin-left:auto;
		text-align:center;
	}
	table, table tr th{
		text-align:center;
	}
	.box-header{
		padding:0;
		margin-left:20px;
		margin-top:-10px;
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
		var boardNo = $(this).parent().children().eq(0).text();
		location.href = "selectBoard.do?boardKey=" + boardNo + "&currentPage=${pi.currentPage}"; 		
	});
});

	$(document).ready(function(){
   	 $("#gcTable").tablesorter();
 	});
	
	function boardForm(){
		location.href="borderForm.do?bCateGory=${bCateGory}";
	}
	function movePage(pageNum){
		location.href = "borderList.do?currentPage=" + pageNum + "&bCateGory=${bCateGory}";
	}
	function searchBoard(){
		var searchText = $("#searchText").val();
		location.href="searchBoard.do?keyword=" +searchText + "&bCateGory=${bCateGory}"
	}
</script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/border/left_column_board.jsp"/>

	<div class="content-wrapper">
	 <!-- Content Header (Page header) -->
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
<!-- /.row -->
      <div class="row" style=" margin-right:auto; margin-left:auto; margin-top:10px;">
        <div class="col-xs-12">
          <div class="box" style="margin-top:20px;width:100%;">
            <div class="box-header">
            <c:choose>
	 			<c:when test="${bCateGory eq 1}">
	 				<h1>공지사항 게시판</h1>
	 			</c:when>
	 			<c:when test="${bCateGory eq 2}">
	 				<h1>자유게시판 게시판</h1>
	 			</c:when>
	 			<c:when test="${bCateGory eq 3}">
	 				<h1>경조사 게시판</h1>
	 			</c:when>
	 		</c:choose>
			</div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table id="example2" class="table table-hover">
                <tr>
                  <th>번호</th>
                  <th>작성자</th>
                  <th>글제목</th>
                  <th>조회수</th>
                  <th>작성일</th>
                </tr>
                <c:forEach items="${list }" var="b">
                <tr>
                  <td><c:out value="${b.boardKey }"/></td>
                  <td><c:out value="${b.eName }"/></td>
                  <td><c:out value="${b.bTitle }"/></td>
                  <td><span class="label label-danger"><c:out value="${b.bCount }"/></span></td>
                  <td><c:out value="${b.bDate }"/></td>
                </tr>
                </c:forEach>
              </table>
              </div>
              <c:if test="${!empty user}">
	              <c:choose>
	              	<c:when test="${user.eType eq 1 && bCategory eq 1}">
		              	<div class="Btn" onclick="boardForm();">공지사항 작성</div>
	              	</c:when>
	              	<c:when test="${bCategory ne 1}">
		              	<div class="Btn" onclick="boardForm();">작성</div>
	              	</c:when>
	              </c:choose>
              </c:if>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
    <!-- /.content -->
	<div class="page">
    <div class="pageBtnDiv">
	<div class="pageBtn" onclick="movePage(1);"> << </div>
	<c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}" >
		<c:if test="${pi.currentPage eq i}">
			<div class="pageBtn" disabled>${i}</div>
		</c:if>
		<c:if test="${pi.currentPage ne i}">
			<div class="pageBtn" onclick="movePage(${i});">${i}</div>
		</c:if>
	</c:forEach>
	<div class="pageBtn" onclick="movePage(${pi.maxPage});"> >> </div> 
    </div>
    </div>
	</div>


<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>