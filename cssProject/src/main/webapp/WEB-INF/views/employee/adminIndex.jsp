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
		height:90px;
	}
	.box-footer{
		height:81px; 
		padding-top:13px;
	}
	.boxTime{
		width:100%;
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
 </style>
 <script>
	$(function(){
	   $(".box-body td").mouseenter(function(){
	      $(this).parent().css("background","darkgray");
	      $(this).parent().css("cursor","pointer");
	   }).mouseout(function(){
	      $(this).parent().css("background","white");
	   }).click(function(){
		  if($("#nullList").text()!=$(this).parent().children().eq(0).text()){
	      var boardNo = $(this).parent("tr").data("key");
	      location.href = "selectBoard.do?boardKey=" + boardNo + "&currentPage=1";
		  }
	   });
	});
	
	function border(b){
		location.href="borderList.do?bCateGory=" + b;
	}
	
	function startTime() {
	    var today = new Date();
	    var year = today.getFullYear();
		var month = today.getMonth();
		var date = today.getDate();
	    var h = today.getHours();
	    var m = today.getMinutes();
	    var s = today.getSeconds();
	    m = checkTime(m);
	    s = checkTime(s);	    
	    document.getElementById('clock').innerHTML =
	   year+ "년" + month + "월" + date + "일" + h + ":" + m + ":" + s;
	    var t = setTimeout(startTime, 500);
	}
	function checkTime(i) {
	    if (i < 10) {i = "0" + i}; // 숫자가 10보다 작을 경우 앞에 0을 붙여줌
	    return i;
	}
	
	function inTime(){
		var today = new Date();
		year = today.getFullYear(); 
		month = today.getMonth();
		date = today.getDate();
	    h = today.getHours();
	    m = today.getMinutes();
	    s = today.getSeconds();
	    now = year +"/"+month+"/"+date+"/"+h+":"+m+":"+s
		$.ajax({
			type:"post",
	        url:"commuteone.do",
	        data : {oneSelect:date, strInTime:now},
	        success: function(data){
	        	alert("출근이 정상 처리되었습니다");
	        	 $("#inTime").text(now);
	        },
	        error: function(error) {
	            alert(error);
	        }
		});
	}
	
	function outTime(){
		var today = new Date();
		year = today.getFullYear(); 
		month = today.getMonth();
		date = today.getDate();
	    h = today.getHours();
	    m = today.getMinutes();
	    s = today.getSeconds();
	    now = year +"/"+month+"/"+date+"/"+h+":"+m+":"+s
		$.ajax({
			type:"post",
	        url:"commuteOut.do",
	        data : {outSelect:date, strOutTime:now},
	        success: function(data){
	        	alert("퇴근이 정상 처리되었습니다");
	        	$("#outTime").text(now);
	        },
	        error: function(error) {
	            alert(error);
	        }
		});
	}
</script>
</head>
<body class="hold-transition skin-blue sidebar-mini" onload="startTime()">
<div class="wrapper">
	
	<c:import url="../include/left_column_companyAdmin.jsp"/>
  
  


  <div class="content-wrapper" style="height: 1050px;">

    <section class="content-header">

    </section>

    <!-- Main content -->
    <section class="content ">
    
    
    <div class="row" style="margin-top:20px;">
        <div class="col-md-4 cProfile"  style="width:40%;">
          <div class="box box-widget widget-user-2 cProfileBody">
          	<table class="table pfTable">
          				<tr>
							<th colspan="6" style="background:#bcbcbc; color:white; ">회사정보</th>
						</tr>
						<tr>
						<c:choose>
							<c:when test="${indexCompany.cLogo != null}">
								<td colspan="2" rowspan="5"><img class="cLogo" src="resources/upload/CompanyLogo/${indexCompany.cLogo}" ></td>
							</c:when>
							<c:otherwise>
								<td colspan="2" rowspan="5"><img class="cLogo" src="resources/dist/img/photo1.png" ></td>
							</c:otherwise>
						
						</c:choose>
						</tr>
						<tr >
							<th>회사명</th>
							<td colspan="3"><c:out value="${requestScope.indexCompany.cName}"/></td>
						</tr>
						<tr>
							<th >대표</th>
							<td ><c:out value="${requestScope.indexCompany.cOwner}"/></td>
							<th >사원수</th>
							<td ><c:out value="${requestScope.indexCompany.counts}"/></td>
						</tr>
						<tr >
							<th>내선번호</th>
							<c:choose>
								<c:when test="{sessionScope.user.eExten != null}">
									<td><c:out value="${sessionScope.user.eExten}"/></td>
								</c:when>
								<c:otherwise>
									<td> 없음</td>
								</c:otherwise>
							
							</c:choose>
							<th >레벨</th>
							<td><c:out value="${sessionScope.user.cLevel}"/></td>
						</tr>
						<tr >
							<th >개인번호</th>
							<c:choose>
								<c:when test="{sessionScope.user.eExten != null}">
									<td colspan="3"><c:out value="${sessionScope.user.ePhone}"/></td>
								</c:when>
								<c:otherwise>
									<td colspan="3">없습니다. </td>
								</c:otherwise>
							</c:choose>
						</tr>
						<tr >
							<th colspan="2">회사주소</th>
							<td colspan="4"><c:out value="${requestScope.indexCompany.cAddress}"/></td>
						</tr>
						<tr >
							<th colspan="2">서비스 종료일</th>
							<td colspan="4"><c:out value="${requestScope.indexCompany.cCloseDay}"/></td>
						</tr>
					</table>
          </div>
        </div>
        
        
        <div class="col-md-4" >
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user-2 cProfileBody">
            <!-- Add the bg color to the header using any of the bg-* classes -->
            <div class="widget-user-header bg-aqua-active">
              <div class="widget-user-image">
                <img class="img-circle" src="resources/upload/empPhoto/${sessionScope.user.ePhoto}"  style="width:100px; height:100px;"alt="User Avatar">
              </div>
              <!-- /.widget-user-image -->
              <div class="empInfo" style="margin-left:70px;">
	              <h3 class="widget-user-username"><c:out value="${sessionScope.user.cName}"/></h3>
	              <h5 class="widget-user-desc"><c:out value="${sessionScope.user.eName} ${sessionScope.user.job}"/></h5>
              </div>
            </div>
            <div class="box-footer " >
              <div class="row">
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">사원번호</h5>
                    <span class="description-text"><c:out value="${sessionScope.user.eNo}"/></span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">부서</h5>
                    <span class="description-text"><c:out value="${sessionScope.user.department}"/></span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <h5 class="description-header">근속년수</h5>
                    <span class="description-text"><c:out value="${sessionScope.user.workYears} 년"/></span>
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
                    <span class="description-text"><c:out value="${sessionScope.user.eHireDate}"/></span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4 border-right">
                  <div class="description-block">
                    <h5 class="description-header">연락망</h5>
                    <span class="description-text"><c:out value="${sessionScope.user.ePhone}"/></span>
                  </div>
                  <!-- /.description-block -->
                </div>
                <!-- /.col -->
                <div class="col-sm-4">
                  <div class="description-block">
                    <h5 class="description-header">생년월일</h5>
                    <span class="description-text"><c:out value="${sessionScope.user.eBirth}"/></span>
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
        
        
        
	        <div class="col-md-3" >
	        <div class="box box-default boxTime" style="height:150px; text-align:center;">
	            <div class="box-header with-border">
	              <h3 class="box-title" style="padding:10px;"><c:out value="${ipLocation}"></c:out></h3>
					
	              <!-- /.box-tools -->
	            </div>
	            <!-- /.box-header -->
	            <div class="box-body" >
	              현재시간 <br>
	              <div id="clock"></div>
	            </div>
	            <!-- /.box-body -->
	          </div>
	          
	          <div class="row" >
	          <div class="box box-default" style="width:47.5%; height:112px; margin-left:3px;">
	            <div class="box-header with-border">
	              <h3 class="box-title">출근시간</h3>
				  <c:if test="${oneSelect eq null}">
              <input type="submit" value="출근" onclick="inTime();" class="btn btn-box-tool">
              </c:if>
              <c:if test="${oneSelect ne null}">
              <input type="submit" value="출근" class="btn btn-box-tool" readonly>
              </c:if>
	              <!-- /.box-tools -->
	            </div>
	            <!-- /.box-header -->
	            <div id="inTime" class="box-body" style="text-align: center;">
	             <c:if test="${oneSelect!=null}">
                    <c:out value="${oneSelect}"></c:out>
                    </c:if> 
	            </div>
	            <!-- /.box-body -->
	          </div>
	          <!-- /.box -->
	          
	          <div class="box box-default" style="width:47.5%; height:112px; margin-left:14px;">
	            <div class="box-header with-border">
	              <h3 class="box-title">퇴근시간</h3>
					<%--  <c:if test="${oneSelect ne null}"> --%>
              <input type="submit" value="퇴근" onclick="outTime();" class="btn btn-box-tool">
            <%--   </c:if>
              <c:if test="${oneSelect eq null}">
              <input type="submit" value="퇴근" class="btn btn-box-tool" readonly>
              </c:if> --%>
	              <!-- /.box-tools -->
	            </div>
	            <!-- /.box-header -->
	            <div id="outTime" class="box-body" style="text-align: center;">
	              <c:if test="${outSelect!=null}">
                    <c:out value="${outSelect}"></c:out>
                    </c:if> 
	            </div>
	            <!-- /.box-body -->
	          </div>
	          <!-- /.box -->
	           </div>
	        </div>
	  </div>     
	  
	  <div class="row" style="margin-top:20px;">
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
                      <img class="birthPhoto" src="resources/upload/empPhoto/${tb.ePhoto}" style="width:80px; height:90px;" alt="User Image">
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

            </div>
            <div class="box-body">
              <div id="donut-chart" style="height: 287px;"></div>
            </div>
            <!-- /.box-body-->
          </div>
          <!-- /.box -->
            </div>
	  </div>
	  
	  <div class="row" style="margin-top:20px;">
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
		                		<td colspan="3" id="nullList" style="cursor:default">조회 된 게시글이 없습니다.</td>
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
							<th colspan="3" style="background:#bcbcbc;">자유 게시판</th>
						</tr>
						<tr>
							<th class="title">글제목</th>
							<th class="writer">작성자</th>
							<th class="date">작성일</th>
						</tr>
						 <c:if test="${board2.size() == 0}">
		    	            <tr>
		                		<td colspan="5" id="nullList" style="cursor:default">조회 된 게시글이 없습니다.</td>
		 	               </tr>
                		</c:if>
		                <c:if test="${board2.size() != 0}">
								<c:forEach items="${board2}" var="board2" varStatus="status">
									<tr data-key=${board2.boardKey }>
										<td class="title"><c:out value="${board2.bTitle }" /></td>
										<td class="writer"><c:out value="${board2.eName }" /></td>
										<td class="date"><c:out value="${board2.bDate }" /></td>
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
		    	<c:if test="${!status.last}">{ label: '${dc.department}', data: ${dc.count}, color: '#79BD9A' },</c:if>
				<c:if test="${status.last}">{ label: '${dc.department}', data: ${dc.count}, color: '#79BD9A' }</c:if>
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
            radius   : 3 / 4,
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
    return '<div style="font-size:13px; text-align:center; padding:2px; color: black; font-weight: 600;">'
      + label
      + '<br>'
      + Math.round(series.percent) + '%</div>'
  }
</script>
</body>
</html>