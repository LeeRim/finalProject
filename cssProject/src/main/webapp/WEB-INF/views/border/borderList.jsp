<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="../include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<!-- REQUIRED JS SCRIPTS -->
<style>

</style>
<script>
$(function(){
	$(".box-body td").mouseenter(function(){
		$(this).parent().css("background","darkgray");
		$(this).parent().css("cursor","pointer");
	}).mouseout(function(){
		$(this).parent().css("background","#94a1ba");
	}).click(function(){
		var boardNo = $(this).parent().children().eq(0).text();
		location.href = "selectBoard.do?boardKey=" + boardNo; 		
	});
});

	function boardForm(){
		location.href="borderForm.do?bCateGory=${bCateGory}";
	}
	function movePage(pageNum){
		location.href = "boardList.do?currentPage=" + pageNum;
	}
</script>

</head>
<body>

<!-- /.row -->
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
            
              <h3 class="box-title">
              </h3>
            

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
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
              	<button onclick="boardForm();">작성</button>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>
    <!-- /.content -->
	
	<button onclick="movePage(1);"> << </button>
	<c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage}" >
		<c:if test="${pi.currentPage eq i}">
			<button disabled>${i}</button>
		</c:if>
		<c:if test="${pi.currentPage ne i}">
			<button onclick="movePage(${i});">${i}</button>
		</c:if>
	</c:forEach>
	<button onclick="movePage(${pi.maxPage});"> >> </button> 


<c:import url="../include/footer.jsp"/>
</body>
</html>