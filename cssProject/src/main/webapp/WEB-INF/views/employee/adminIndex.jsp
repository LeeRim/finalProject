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
		height:81px; 
		padding-top:13px;
	}
	.empInfo{
		margin-left:30px;
		margin-top:10px;
	}
	.widget-user-2 .widget-user-image > img{
		width:80px;
	}
	.widget-user-image{
		margin-top:-13px;
		padding:9px;
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
		text-weight:bold;
	}
	.cProfile{
		width:630px;
	}
	.cProfileBody{
		height:270px;
	}
	.cLogo{
		width:130px;
		height:130px;
	}
	.birthPhoto{
		width:100px;
		height:100px;
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
  
  


  <div class="content-wrapper" style="height: 980px;">

    <section class="content-header">

    </section>

    <!-- Main content -->
    <section class="content ">
    
    
    <div class="row">
        <div class="col-md-4 cProfile" >
          <div class="box box-widget widget-user-2 cProfileBody">
          	<table class="table pfTable">
          				<tr>
							<th colspan="6" style="background:#bcbcbc; color:white; ">회사정보</th>
						</tr>
						<tr>
							<td colspan="2" rowspan="5"><img class="cLogo" src="resources/dist/img/photo1.png" ></td>
						</tr>
						<tr >
							<th>회사명</th>
							<td colspan="3">CSS</td>
						</tr>
						<tr>
							<th >대표</th>
							<td >장건희</td>
							<th >사원수</th>
							<td >6명</td>
						</tr>
						<tr >
							<th>내선번호</th>
							<td>1234</td>
							<th >레벨</th>
							<td >1</td>
						</tr>
						<tr >
							<th >개인번호</th>
							<td colspan="3">010-6561-2016</td>
						</tr>
						<tr >
							<th colspan="2">회사주소</th>
							<td colspan="4">서울특별시 테헤란로41 빌딩 4층</td>
						</tr>
						<tr >
							<th colspan="2">서비스 종료일</th>
							<td colspan="4">2018-08-23</td>
						</tr>
					</table>
          </div>
        </div>
        
        
        <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user-2 cProfileBody">
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
	          <div class="box box-default" style="width:48.5%; height:112px;">
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
	          
	          <div class="box box-default" style="width:48.5%; height:112px; margin-left:10px;">
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
	  
	  <div class="row" style="margin-top:10px;">
	  	<div class="col-md-6" >
              <!-- USERS LIST -->
              <div class="box box-danger" style="height:353px;">
                <div class="box-header with-border">
                  <h3 class="box-title">Happy Birthday</h3>

                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding" >
                  <ul class="users-list clearfix">
                  <c:forEach items="${todayBList }" var="tb">
                    <li>
                      <img class="birthPhoto" src="resources/dist/img/user1-128x128.jpg"  alt="User Image">
                      <a class="users-list-name" href="#">${tb.eName }</a>
                      <span class="users-list-date">${tb.department }</span>
                    </li>
                  </c:forEach>
                  </ul>
                  <!-- /.users-list -->
                </div>
                <!-- /.box-body -->
              </div>
              <!--/.box -->
            </div>
            <!-- /.col -->
            
            <div class="col-md-6">
            	<!-- Donut chart -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">부서 별 인원</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div id="donut-chart" style="height: 287px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->
            </div>
	  </div>
	  
	  <div class="row" style="margin-top:10px;">
	  	<div class="col-md-6" >
				<div class="box-body table-responsive no-padding">
					<table class="table table-hover">
						<tr>
							<th colspan="3" style="background:#bcbcbc;">공지사항</th>
						</tr>
						<tr>
							<th class="title">글제목</th>
							<th class="writer">작성자</th>
							<th class="date">작성일</th>
						</tr>
						 <c:if test="${board1.size() == 0}">
		    	            <tr>
		                		<td colspan="3" >조회 된 게시글이 없습니다.</td>
		 	               </tr>
		                </c:if>
		                <c:if test="${board1.size() != 0}">
								<c:forEach items="${board1}" var="board1" varStatus="status">
									<tr data-key=${board1.boardKey }>
										<td class="title"><c:out value="${board1.bTitle }" /></td>
										<td class="writer"><c:out value="${board1.eName }" /></td>
										<td class="date"><c:out value="${board1.bDate }" /></td>
									</tr>
								</c:forEach>
						</c:if>
					</table>
				</div>
			</div>
			
			<div class="col-md-6" >
				<div class="box-body table-responsive no-padding">
					<table class="table table-hover">
						<tr>
							<th colspan="3" style="background:#bcbcbc;">문의사항</th>
						</tr>
						<tr>
							<th class="title">글제목</th>
							<th class="writer">작성자</th>
							<th class="date">작성일</th>
						</tr>
						 <c:if test="${board1.size() == 0}">
		    	            <tr>
		                		<td colspan="5">조회 된 게시글이 없습니다.</td>
		 	               </tr>
                		</c:if>
		                <c:if test="${board1.size() != 0}">
								<c:forEach items="${board1}" var="board1" varStatus="status">
									<tr data-key=${board1.boardKey }>
										<td class="title"><c:out value="${board1.bTitle }" /></td>
										<td class="writer"><c:out value="${board1.eName }" /></td>
										<td class="date"><c:out value="${board1.bDate }" /></td>
									</tr>
								</c:forEach>
						</c:if>
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
<!-- FLOT CHARTS -->
<script src="resources/bower_components/Flot/jquery.flot.js"></script>
<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
<script src="resources/bower_components/Flot/jquery.flot.pie.js"></script>
<script>
  $(function () {
    /*
     * DONUT CHART
     * -----------
     */

    var donutData = [
    	<c:forEach items="${departCountList }" var="dc" varStatus="status">
	    	<c:if test="${!status.last}">{ label: '${dc.department}', data: ${dc.count}, color: '#3c8dbc' },</c:if>
			<c:if test="${status.last}">{ label: '${dc.department}', data: ${dc.count}, color: '#3c8dbb' }</c:if>
      </c:forEach>	
    ]
    $.plot('#donut-chart', donutData, {
      series: {
        pie: {
          show       : true,
          radius     : 1,
          innerRadius: 0.5,
          label      : {
            show     : true,
            radius   : 2 / 3,
            formatter: labelFormatter,
            threshold: 0.1
          }

        }
      },
      legend: {
        show: false
      }
    })
    /*
     * END DONUT CHART
     */

  })

  /*
   * Custom Label formatter
   * ----------------------
   */
  function labelFormatter(label, series) {
    return '<div style="font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;">'
      + label
      + '<br>'
      + Math.round(series.percent) + '%</div>'
  }
</script>
</body>
</html>