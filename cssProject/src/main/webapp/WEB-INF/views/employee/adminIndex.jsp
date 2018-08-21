<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
 <style>
 	.row{
 		margin-left:auto;
 		margin-right:auto;
 	}
	.box{
		width:100%;
	}
	.box.box-default{
		height:82px;
	}
	.box-footer{
		height:80px; 
		padding-top:11px;
	}
	.empInfo{
		margin-left:40px;
		margin-top:10px;
	}
	.widget-user-2 .widget-user-image > img{
		width:80px;
	}
	.widget-user-image{
		margin-top:-13px;
		padding:7px;
	}
	#calendar{
		height:520px;
	}
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
		background:#4f6891;
		color:white;
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
	
	function border(b){
		location.href="borderList.do?bCateGory=" + b;
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="../include/left_column_employee.jsp"/>
  
  


  <div class="content-wrapper" style="height: 100%;">

    <section class="content-header">

    </section>

    <!-- Main content -->
    <section class="content ">
    <div class="row">
		<div class="col-md-4">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user-2">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-aqua-active">
              <div class="widget-user-image">
                <img class="img-circle" src="resources/dist/img/user1-128x128.jpg" alt="User Avatar">
              </div>
              <!-- /.widget-user-image -->
              <div class="empInfo">
	              <h3 class="widget-user-username">KH컴퍼니</h3>
	              <h5 class="widget-user-desc">최범석대리</h5>
              </div>
            </div>
            <div class="box-footer " >
              <div class="row">
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">사원번호</h5>
                    <span class="description-text">K3829</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">부서</h5>
                    <span class="description-text">개발팀</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <h5 class="description-header">근속년수</h5>
                    <span class="description-text">3년</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
             <div class="box-footer" >
              <div class="row" >
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">입사일</h5>
                    <span class="description-text">2016-08-07</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">연락망</h5>
                    <span class="description-text">010-1234-5678</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <h5 class="description-header">생년월일</h5>
                    <span class="description-text">1999/01/01</span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.widget-user -->
        </div>
        
	        <div class="col-md-3">
	        <div class="box box-default" style="height:150px; text-align:center;">
	            <div class="box-header with-border">
	              <h3 class="box-title" style="padding:10px;"> IP : 192.169.12.3 </h3>
					
	              <!-- /.box-tools -->
	            </div>
	            <!-- /.box-header -->
	            <div class="box-body" >
	              현재시간 <br>
	              2018-08-21 16:58:03
	            </div>
	            <!-- /.box-body -->
	          </div>
	          
	          <div class="row">
	          <div class="box box-default" style="width:48.5%; height:106.5px;">
	            <div class="box-header with-border">
	              <h3 class="box-title">출근시간</h3>
				  <button type="button" class="btn btn-box-tool" >출근</button>
	              <!-- /.box-tools -->
	            </div>
	            <!-- /.box-header -->
	            <div class="box-body">
	              2018-08-21 08:08:01
	            </div>
	            <!-- /.box-body -->
	          </div>
	          <!-- /.box -->
	          
	          <div class="box box-default" style="width:48.5%; height:106.5px; margin-left:10px;">
	            <div class="box-header with-border">
	              <h3 class="box-title">퇴근시간</h3>
					<button type="button" class="btn btn-box-tool" >퇴근</button>
	              <!-- /.box-tools -->
	            </div>
	            <!-- /.box-header -->
	            <div class="box-body">
	              2018-08-21 18:08:09
	            </div>
	            <!-- /.box-body -->
	          </div>
	          <!-- /.box -->
	           </div>
	        </div>
	  </div>     
	  
	  <div class="row">
	         <div class="col-md-4" style="margin-top:-9px; width:41%;">
				<div class="box-body table-responsive no-padding">
							<h4>공지사항</h4>
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
			</div>
	  </div> 
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="../include/footer.jsp"/>
</body>
</html>