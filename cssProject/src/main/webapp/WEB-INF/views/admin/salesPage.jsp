<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구글 차트 : 컬럼차트 : 컬럼차트 기초 그리고 시작</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <!-- Morris charts -->
  <link rel="stylesheet" href="resources/bower_components/morris.js/morris.css">
<script>
	google.charts.load('current', {packages:['corechart']});
</script>

</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
	<c:import url="admin_side.jsp"/>
	
	<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
  	<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        관리자페이지
        <small>매출현황_기간 별 매출</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
    
    <div class="row" style="margin-left:auto; margin-right:auto; margin-top:20px;">
        <div class="col-md-12">
          <div class="box" style="width:100%; ">
            <div class="box-header with-border">
              <h3 class="box-title">2018년 월 별 매출</h3>

              <div class="box-tools pull-right">
               <button type="button" class="btn btn-box-tool"  onclick="chart_options.isStacked=false; drawChart()">false(기본값)</button>
				<button type="button" class="btn btn-box-tool" onclick="chart_options.isStacked=true; drawChart()">true</button>
				<button type="button" class="btn btn-box-tool" onclick="chart_options.isStacked='percent'; drawChart()">'percent' (문자열)</button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <div class="btn-group">
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li class="divider"></li>
                    <li><a href="#">Separated link</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-8">
                  <p class="text-center">
                    <strong>매출: 1 JAN, 2018 - 31 AUG, 2018</strong>
                  </p>

                  <div class="chart" style="margin-top:-10px;">
                    <!-- Sales Chart Canvas -->
                  		 <div id="chart_div"></div>
                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
                  <p class="text-center" >
                    <strong>이용권 별 현황</strong>
                  </p>
                <div class="col-md-4" style="margin-top:55px;">

                  <div class="progress-group">
                    <span class="progress-text">1개월 이용권</span>
                    <span class="progress-number"><b>160</b>/200</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-aqua" style="width: 80%; background-color:#00c0ef;"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                  <div class="progress-group">
                    <span class="progress-text">3개월 이용권</span>
                    <span class="progress-number"><b>310</b>/400</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-red" style="width: 50%; background-color:#dd4b39;"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                  <div class="progress-group">
                    <span class="progress-text">6개월 이용권</span>
                    <span class="progress-number"><b>480</b>/800</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-green" style="width: 80%; background-color:#00a65a;"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                  <div class="progress-group">
                    <span class="progress-text">12개월 이용권</span>
                    <span class="progress-number"><b>250</b>/500</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-yellow" style="width: 30%; background-color:#f39c12;"></div>
                    </div>
                  </div>
                  <!-- /.progress-group -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- ./box-body -->
            
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    
    	<div class="row" style="margin-left:auto; margin-right:auto;">
    	<!-- DONUT CHART -->
          <div class="box box-danger" style="width:30%; margin-left:15px;">
            <div class="box-header with-border">
              <h3 class="box-title">결제수단</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="sales-chart" style="height: 300px; position: relative;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
    	</div>
      <!-- /.row -->
    
    
    
    
    
    

	



<!-- 예제 종료 -->
    
  </div>
	
	</div>
<c:import url="../include/footer.jsp"/>
<!-- Morris.js charts -->
<script src="resources/bower_components/raphael/raphael.min.js"></script>
<script src="resources/bower_components/morris.js/morris.min.js"></script>
<script>

	// 로딩 완료시 함수 실행하여 차트 생성
	google.charts.setOnLoadCallback(drawChart);

	// 차트 옵션을 전역으로 설정했습니다. 설정을 바꿔보는 예제를 만들기 위해서요.
	var chart_options = {
		width : 950,
		height : 300,
		colors: ['#f15628', '#5b6777', '#ffc81b'],
		bar : {
			groupWidth : '50%'
		},
		isStacked : true // 그래프 쌓기(스택), 기본값은 false
	};

	function drawChart(){

		// 차트 데이터
		var data = new google.visualization.arrayToDataTable([
			['월', '레벨 1', '레벨 2', '레벨 3'], // 제목 그리고 항목들
			['1월', 18790, 20000, 10000], // 제목과 항목수를 맞춰주어야 합니다.
			['2월', 15790, 30000, 3500],
			['3월', 20790, 25000, 4000],
			['4월', 10790, 30000, 2000],
			['5월', 57900, 10000, 25000],
			['6월', 15790, 10000, 5000],
			['7월', 27900, 20000, 25000],
			['8월', 57900, 10000, 12500],
			['9월', 0 ,0 ,0 ],
			['10월', 0 ,0 ,0 ],
			['11월', 0 ,0 ,0 ],
			['12월', 0 ,0 ,0 ]
		]);

		var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
		chart.draw(data, chart_options);
	}
     
	 $(function () {
	    "use strict";
	    
	  //DONUT CHART
	    var donut = new Morris.Donut({
	      element: 'sales-chart',
	      resize: true,
	      colors: ["#3c8dbc", "#f56954", "#00a65a"],
	      data: [
	        {label: "카카오페이", value: 42},
	        {label: "삼성페이", value: 30},
	        {label: "KG이니시스", value: 17}
	      ],
	      hideHover: 'auto'
	    });
	 });
		   
</script>
</body>
</html>