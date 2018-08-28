<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/admin_header.jsp"/>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
  <!-- Morris charts -->
  <link rel="stylesheet" href="resources/bower_components/morris.js/morris.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="resources/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- jQuery UI 1.11.4 -->
<script src="resources/bower_components/jquery-ui/jquery-ui.min.js"></script>
<style>
 td.day, th.dow, th.datepicker-switch, th.next, th.prev{
 	color:white;
 }
 .clearfix{
 	padding:5px;
 }
 .chart-legend.clearfix{
 	margin-top:80px;
 	font-size:17px;
 }
 .no-padding ul li{
 	margin-bottom:10px;
 }
.pieChart{
	margin-left:75px;
}
.row{
	margin-left:auto;
	margin-right:auto;
	margin-top:10px;
}
.icon{
	margin-top:15px;
}
.col-lg-3{
	width:25%;
}
.inner{
	margin-left:10px;
}
.small-box-footer{
	height:25px;
}
.new-col-sm-6{
	width:50%;
	float:left;
}
</style>
<script>
  		function menuHighlight(clickIdx){
  			sessionStorage.setItem("menu", clickIdx);
  		}
  		
  </script>
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
	
	<c:import url="/WEB-INF/views/admin/admin_side.jsp"/>
  
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" >
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        관리자 페이지
        <small>CSS_관리부</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>
	
	<!-- 상단 위젯 -->
	
	<div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
            <h3>${allCount }</h3>
              <p>총 인원 수</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-people"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
            <h3>${count1 }</h3>
              <p>LEVEL 1</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-person"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>${count2 }</h3>

              <p>LEVEL 2</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-person"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>${count3 }</h3>

              <p>LEVEL 3</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-person"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
	<!-- /상단 위젯 -->

    <!-- Main content -->
    <section class="content container-fluid">
	<div class="box box-info" style="width:50%; height:380.09px;">
            <div class="box-header with-border">
              <i class="fa fa-line-chart"></i>
              <h3 class="box-title">CSS 이용회원</h3>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="line-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
    </div>
	
	          <!-- Calendar -->
          <div class="box box-solid bg-green-gradient" style="width:48.5%; margin-left:10px; margin-right:0;">
            <div class="box-header">
              <i class="fa fa-calendar"></i>

              <h3 class="box-title">종료일</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <!--The calendar -->
              <div id="calendar" style="width: 100%">
              
              </div>
            </div>
            
            <!-- /.box-body -->
            <div class="box-footer text-black" style="height:117.66px;">
              <div class="row">
                <div class="col-sm-6">
                  <c:forEach items="${nowCalList}" var="nCList" varStatus="status">
                  	<c:if test="${status.count le 3}">
                  		<div class="clearfix">
							<span class="pull-left">${nCList.cName}</span>
							<small class="pull-right">${nCList.cCloseDay}</small>
						</div>
                  	</c:if>
                  </c:forEach>
	            </div>
				<div class="new-col-sm-6">
					<c:forEach items="${nowCalList}" var="nCList" varStatus="status">
                  	<c:if test="${status.count gt 3}">
                  		<div class="clearfix">
							<span class="pull-left">${nCList.cName}</span>
							<small class="pull-right">${nCList.cCloseDay}</small>
						</div>
                  	</c:if>
                  </c:forEach>
				</div>

                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
          </div>
          <!-- /.box -->

      <!--------------------------
        | Your Page Content Here |
        -------------------------->

    </section>
    <section class="content container-fluid">
    <!-- AREA CHART -->
          <div class="box box-warning" style="width:50%;">
            <div class="box-header with-border">
            <i class="fa fa-users"></i>
              <h3 class="box-title">지역 별 분포도</h3>

            </div>
            <div class="box-body">
              <div class="chart">
                <div id="map" style="width:100%;height:550px;"></div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          
          
          
          <div class="box box-default" style="margin-left:10px; width:48.5%; height:615.09px;">
            <div class="box-header with-border">
            <i class="fa fa-pie-chart"></i>
              <h3 class="box-title">지역별 분포도(TOP 5) - 그래프</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-8">
                  <div class="chart-responsive pieChart">
                    <canvas id="pieChart" height="295px;" ></canvas>
                  </div>
                  <!-- ./chart-responsive -->
                </div>
                <!-- /.col -->
                <div class="col-md-4" >
                  <ul class="chart-legend clearfix">
                  	<c:forEach items="${top5List}" var="t5" varStatus="status">
                  		<c:choose>
                  			<c:when test="${status.count == 1}"><li><i class="fa fa-circle-o text-red"></i> ${t5.city }</li></c:when>
                  			<c:when test="${status.count == 2}"><li><i class="fa fa-circle-o text-green"></i> ${t5.city }</li></c:when>
                  			<c:when test="${status.count == 3}"><li><i class="fa fa-circle-o text-aqua"></i> ${t5.city }</li></c:when>
                  			<c:when test="${status.count == 4}"><li><i class="fa fa-circle-o text-light-blue"></i> ${t5.city }</li></c:when>
                  			<c:otherwise><li><i class="fa fa-circle-o text-light-gray"></i> ${t5.city }</li></c:otherwise>
                  		</c:choose>
		          	 </c:forEach>
                  </ul>
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer no-padding">
            	<div class="box-header with-border">
		            <i class="fa fa-map-o"></i>
		              <h3 class="box-title">지역별 분포도(TOP 5) - 백분율</h3>
		        </div>
              <ul class="nav nav-pills nav-stacked">
              	<c:forEach items="${top5List}" var="t5" varStatus="status">
                		<c:choose>
                			<c:when test="${status.count == 1}"><li><a>${t5.city }<span class="pull-right text-red">${t5.per }%</span></a></li></c:when>
                			<c:when test="${status.count == 2}"><li><a>${t5.city }<span class="pull-right text-green">${t5.per }%</span></a></li></c:when>
                			<c:when test="${status.count == 3}"><li><a>${t5.city }<span class="pull-right text-aqua">${t5.per }%</span></a></li></c:when>
                			<c:when test="${status.count == 4}"><li><a>${t5.city }<span class="pull-right text-light-blue">${t5.per }%</span></a></li></c:when>
                			<c:otherwise><li><a>${t5.city }<span class="pull-right text-gray">${t5.per }%</span></a></li></c:otherwise>
                		</c:choose>
		      	</c:forEach>
              </ul>
            </div>
            <!-- /.footer -->
          </div>
          <!-- /.box -->
          </section>
    </div>
    
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->




	<c:import url="/WEB-INF/views/include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
     <!-- Morris.js charts -->
<script src="resources/bower_components/raphael/raphael.min.js"></script>
<script src="resources/bower_components/morris.js/morris.min.js"></script>
<!-- datepicker -->
<script src="resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.js"></script>
<!-- 다음 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d57c0efd2cbfd46572b534f98d014d0"></script>
<!-- ChartJS -->
<script src="resources/bower_components/chart.js/Chart.js"></script>
<script>
 $(function(){
	 $('#calendar').datepicker().datepicker("setDate", new Date()).on("changeDate", function(event){
		var date = event.date;
		var year = date.getFullYear();
		var month = date.getMonth() + 1;
		var day = date.getDate();
		var dates = year +"/"+ month +"/"+ day
		console.log(dates);
		$.ajax({
			url : "calendarList.do",
			type : "get",
			data : { dateList : dates },
			success : function(data){
				var cName = "";
				var resultHtml = "";
				var resultHtml2 = "";
				for(var key in data){
					cName = data[key].cName;
					if(key <= 2){
						resultHtml += "<div class='clearfix'>";
						resultHtml += "<span class='pull-left'>" + cName + "</span>";
						resultHtml += "<small class='pull-right'>" + dates + "</small>";
						resultHtml += "</div>";
					}else{
						resultHtml2 += "<div class='clearfix'>";
						resultHtml2 += "<span class='pull-left'>" + cName + "</span>";
						resultHtml2 += "<small class='pull-right'>" + dates + "</small>";
						resultHtml2 += "</div>";
					}
				}
				$(".col-sm-6").html(resultHtml);
				$(".new-col-sm-6").html(resultHtml2);
			},error : function(e){
				console.log("실패 : " + e);
			}
		}); 			
	 });	 
 });

 	$(function(){
 		
 
    "use strict";

    // LINE CHART
    var line = new Morris.Line({
      element: 'line-chart',
      resize: true,
      data: [
    	  <c:forEach items="${userAddList}" var="ua" varStatus="status">
  	  		<c:if test="${!status.last}">{y: '${ua.allmonth}', item1: ${ua.count}},</c:if>
			<c:if test="${status.last}">{y: '${ua.allmonth}', item1: ${ua.count}}</c:if>
  	  	  </c:forEach>
      ],
      xkey: 'y',
      ykeys: ['item1'],
      labels: ['Item 1'],
      xLabels:'month',
      lineColors: ['#3c8dbc'],
      hideHover: 'auto'
    });
    
 // -------------
    // - PIE CHART -
    // -------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas = $('#pieChart').get(0).getContext('2d');
   
 
    var PieData = [];
    <c:forEach items="${top5List}" var="t5" varStatus="status">
    	PieData.push({
    		value    : ${t5.counts},
   	        color    : <c:if test="${status.count == 1}">'#f56954'</c:if><c:if test="${status.count == 2}">'#00a65a'</c:if>
   	        			 <c:if test="${status.count == 3}">'#00c0ef'</c:if><c:if test="${status.count == 4}">'#3c8dbc'</c:if><c:if test="${status.count == 5}">'#d2d6de'</c:if>,
   	        highlight: <c:if test="${status.count == 1}">'#f56954'</c:if><c:if test="${status.count == 2}">'#00a65a'</c:if>
  			 			  <c:if test="${status.count == 3}">'#00c0ef'</c:if><c:if test="${status.count == 4}">'#3c8dbc'</c:if><c:if test="${status.count == 5}">'#d2d6de'</c:if>,
   	        label    : '${t5.city}'
    	});
    </c:forEach>
 
    var pieChart       = new Chart(pieChartCanvas).Doughnut(PieData);
    // Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.

    // -----------------
    // - END PIE CHART -
    // -----------------
  });
  
  $(function(){
	  
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
  mapOption = { 
      center: new daum.maps.LatLng(35.7568230, 127.7742510), // 지도의 중심좌표 - 대한민국 경상남도 거창군 북상면 창선리
      level: 13 // 지도의 확대 레벨
  };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [];

<c:forEach items="${markList}" var="c" >
	positions.push({
		title: '${c.city} : ${c.counts}개', 
	    latlng: new daum.maps.LatLng(${c.lat}, ${c.lng})
	});
</c:forEach>


//마커 이미지의 이미지 주소입니다
var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
  
for (var i = 0; i < positions.length; i ++) {
  
  // 마커 이미지의 이미지 크기 입니다
  var imageSize = new daum.maps.Size(24, 35); 
  
  // 마커 이미지를 생성합니다    
  var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
  
  // 마커를 생성합니다
  var marker = new daum.maps.Marker({
      map: map, // 마커를 표시할 지도
      position: positions[i].latlng, // 마커를 표시할 위치
      title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
      image : markerImage // 마커 이미지 
  });
}
});




</script>
</body>
</html>