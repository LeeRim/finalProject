<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
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
	
	<c:import url="admin_side.jsp"/>
  
  

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
              <h3>150</h3>

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
              <h3>53</h3>
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
              <h3>44</h3>

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
              <h3>65</h3>

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

              <h3 class="box-title">Calendar</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <!--The calendar -->
              <div id="calendar" style="width: 100%">
              
              </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer text-black">
              <div class="row">
                <div class="col-sm-6">
                  <!-- Progress bars -->
                  <div class="clearfix">
                    <span class="pull-left">유큰별</span>
                    <small class="pull-right">2018-08-03</small>
                  </div>

                  <div class="clearfix">
                    <span class="pull-left">이유림</span>
                    <small class="pull-right">2018-08-03</small>
                  </div>
                  
                  <div class="clearfix">
                    <span class="pull-left">장건희</span>
                    <small class="pull-right">2018-08-03</small>
                  </div>

                </div>
                <!-- /.col -->
                <div class="col-sm-6">
                  <div class="clearfix">
                    <span class="pull-left">전유민</span>
                    <small class="pull-right">2018-08-03</small>
                  </div>

				<div class="clearfix">
                    <span class="pull-left">김기영</span>
                    <small class="pull-right">2018-08-03</small>
                  </div>

                  <div class="clearfix">
                    <span class="pull-left">이원준</span>
                    <small class="pull-right">2018-08-03</small>
                  </div>

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
              <h3 class="box-title">지역별 분포도 - 그래프</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-8">
                  <div class="chart-responsive pieChart">
                    <canvas id="pieChart" height="300px;" ></canvas>
                  </div>
                  <!-- ./chart-responsive -->
                </div>
                <!-- /.col -->
                <div class="col-md-4" >
                  <ul class="chart-legend clearfix">
                    <li><i class="fa fa-circle-o text-red"></i> 서울특별시</li>
                    <li><i class="fa fa-circle-o text-green"></i> 인천광역시</li>
                    <li><i class="fa fa-circle-o text-aqua"></i> 대전광역시</li>
                    <li><i class="fa fa-circle-o text-light-blue"></i> 제주특별자치도</li>
                    <li><i class="fa fa-circle-o text-gray"></i> 경기도 성남시 </li>
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
		              <h3 class="box-title">지역별 분포도 - 백분율</h3>
		        </div>
              <ul class="nav nav-pills nav-stacked">
              	<li><a>서울특별시<span class="pull-right text-red">50%</span></a></li>
                <li><a>인천광역시<span class="pull-right text-red">12%</span></a></li>
                <li><a>대전광역시<span class="pull-right text-green">4%</span></a></li>
                <li><a>제주특별자치도<span class="pull-right text-yellow">0%</span></a></li>
                <li><a>경기도성남시<span class="pull-right text-yellow">0%</span></a></li>
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




	<c:import url="../include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
     <!-- Morris.js charts -->
<script src="resources/bower_components/raphael/raphael.min.js"></script>
<script src="resources/bower_components/morris.js/morris.min.js"></script>
<!-- datepicker -->
<script src="resources/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- 다음 지도 api -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d57c0efd2cbfd46572b534f98d014d0"></script>
<!-- ChartJS -->
<script src="resources/bower_components/chart.js/Chart.js"></script>
<script>
 $(function(){
	 $('#calendar').datepicker(); 
 });
 
  $(function () {
    "use strict";

    // LINE CHART
    var line = new Morris.Line({
      element: 'line-chart',
      resize: true,
      data: [
        {y: '2016-01', item1: 1},
        {y: '2016-04', item1: 7},
        {y: '2016-07', item1: 13},
        {y: '2016-10', item1: 21},
        {y: '2017-01', item1: 41},
        {y: '2017-04', item1: 48},
        {y: '2017-07', item1: 53},
        {y: '2017-10', item1: 59},
        {y: '2018-01', item1: 67},
        {y: '2018-04', item1: 88},
        {y: '2018-07', item1: 91}
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
   
    var PieData        = [
      {
        value    : 700,
        color    : '#f56954',
        highlight: '#f56954',
        label    : '서울특별시'
      },
      {
        value    : 500,
        color    : '#00a65a',
        highlight: '#00a65a',
        label    : '인천광역시'
      },
      {
        value    : 600,
        color    : '#00c0ef',
        highlight: '#00c0ef',
        label    : '대전광역시'
      },
      {
        value    : 300,
        color    : '#3c8dbc',
        highlight: '#3c8dbc',
        label    : '제주특별자치도'
      },
      {
        value    : 100,
        color    : '#d2d6de',
        highlight: '#d2d6de',
        label    : '경기도 성남시'
      }
    ];
    
    var pieChart       = new Chart(pieChartCanvas).Doughnut(PieData);
    // Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.

    // -----------------
    // - END PIE CHART -
    // -----------------
    
  });
  
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
  mapOption = { 
      center: new daum.maps.LatLng(35.7568230, 127.7742510), // 지도의 중심좌표 - 대한민국 경상남도 거창군 북상면 창선리
      level: 13 // 지도의 확대 레벨
  };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [];

<c:forEach items="${list}" var="c" varStatus="status">
	positions.push({
		title: '${c.city} : ${status.count}개', 
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



</script>
</body>
</html>