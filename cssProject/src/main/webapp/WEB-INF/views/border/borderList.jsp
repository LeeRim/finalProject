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
   <c:import url="/WEB-INF/views/include/left_column.jsp"/>
<<<<<<< HEAD

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
      <div class="row" style="width:100%; margin-right:auto; margin-left:auto; margin-top:10px;">
        <div class="col-xs-12">
          <div class="box" style="margin-top:20px;">
            <div class="box-header">
            
              <h3 class="box-title">
              </h3>
            


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
              	<button class="write"onclick="boardForm();">작성</button>
              <c:if test="${!empty user}">
	              <c:choose>
	              	<c:when test="${user.eType eq 1 && bCategory eq 1}">
		              	<div class="Btn" onclick="boardForm();">공지사항 작성</div>
	              	</c:when>
	              	<c:otherwise>
		              	<div class="Btn" onclick="boardForm();">작성</div>
	              	</c:otherwise>
	              </c:choose>
              </c:if>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
    <!-- /.content -->
	<div class="page">
	<button onclick="movePage(1);"> << </button>
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