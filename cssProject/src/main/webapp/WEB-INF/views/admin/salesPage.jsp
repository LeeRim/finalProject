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
              <h3 class="box-title">총 매출액</h3>

              <div class="box-tools pull-right">
               <button type="button" class="btn btn-box-tool"  onclick="chart_options.isStacked=false; drawChart()">false(기본값)</button>
				<button type="button" class="btn btn-box-tool" onclick="chart_options.isStacked=true; drawChart()">true</button>
				<button type="button" class="btn btn-box-tool" onclick="chart_options.isStacked='percent'; drawChart()">'percent' (문자열)</button>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

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
				<c:forEach items="${levelCountPer}" var="lcp" >
				<c:if test="${lcp.payVoucher == 1 }">
                  <div class="progress-group">
                    <span class="progress-text">1개월 이용권</span>
                    <span class="progress-number"><b>${lcp.count }</b>/${lcp.allcount }</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-aqua" style="width: ${lcp.per}%; background-color:#00c0ef;"></div>
                    </div>
                  </div>
                  </c:if>
                  <!-- /.progress-group -->
                  <c:if test="${lcp.payVoucher == 3 }">
                  <div class="progress-group">
                    <span class="progress-text">3개월 이용권</span>
                    <span class="progress-number"><b>${lcp.count }</b>/${lcp.allcount }</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-red" style="width: ${lcp.per}%; background-color:#dd4b39;"></div>
                    </div>
                  </div>
                  </c:if>
                  <!-- /.progress-group -->
                  <c:if test="${lcp.payVoucher == 6 }">
                  <div class="progress-group">
                    <span class="progress-text">6개월 이용권</span>
                    <span class="progress-number"><b>${lcp.count }</b>/${lcp.allcount }</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-green" style="width: ${lcp.per}%; background-color:#00a65a;"></div>
                    </div>
                  </div>
                  </c:if>
                  <!-- /.progress-group -->
                  <c:if test="${lcp.payVoucher == 12 }">
                  <div class="progress-group">
                    <span class="progress-text">12개월 이용권</span>
                    <span class="progress-number"><b>${lcp.count }</b>/${lcp.allcount }</span>

                    <div class="progress sm">
                      <div class="progress-bar progress-bar-yellow" style="width: ${lcp.per}%; background-color:#f39c12;"></div>
                    </div>
                  </div>
                  </c:if>
                  <!-- /.progress-group -->
                  </c:forEach>
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
      
      
       <div class="row" style="margin-left:auto; margin-right:auto; ">
    	<!-- DONUT CHART -->
          <div class="box box-danger" style="margin-left:15px;">
            <div class="box-header with-border">
              <h3 class="box-title">레벨 별 월 매출액</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div id="level_chart_div"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          <div class="box box-danger" style="width:30%; margin-left:15px;">
            <div class="box-header with-border">
              <h3 class="box-title">결제수단(추가예정)</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="sales-chart" style="height: 300px; position: relative; "></div>
            </div>
            <!-- /.box-body -->
          </div>
    	</div>
      <!-- /.row -->
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
		colors: ["#6ca9ae"],
		bar : {
			groupWidth : '80%' // 예제에서 이 값을 수정
		},
		legend : {
			position : 'right' // 이걸 주석처리 해보면 ..
		}
	};
	
	
	var chart_options2 = {
		width : 1005,
		height : 300,
		colors: ['#f15628', '#5b6777', '#ffc81b'],
		bar : {
			groupWidth : '50%'
		},
		isStacked : true // 그래프 쌓기(스택), 기본값은 false
	};

	function drawChart(){
	
		var data = google.visualization.arrayToDataTable([
			['월', '금액'],
			<c:forEach items="${monthSumAll}" var="msa" varStatus="status">
				<c:if test="${!status.last}">['${msa.allmonth}월',${msa.sumsales}원],</c:if>
				<c:if test="${status.last}">['${msa.allmonth}월',${msa.sumsales}원]</c:if>
			</c:forEach>
		]);

		var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
		chart.draw(data, chart_options);
		
		// 차트 데이터
		var data2 = new google.visualization.arrayToDataTable([
			['월', '레벨 1', '레벨 2', '레벨 3'], // 제목 그리고 항목들
			<c:forEach items="${monthSumLevel}" var="msl" varStatus="status">
				<c:if test="${!status.last}">['${msl.allmonth}월',${msl.level1}원,${msl.level2}원,${msl.level3}원],</c:if>
				<c:if test="${status.last}">['${msl.allmonth}월',${msl.level1}원,${msl.level2}원,${msl.level3}원]</c:if>
			</c:forEach>
		]);

		var chart = new google.visualization.ColumnChart(document.getElementById('level_chart_div'));
		chart.draw(data2, chart_options2);
	}
     
	 $(function () {
	    "use strict";
	    
	  //DONUT CHART
	    var donut = new Morris.Donut({
	      element: 'sales-chart',
	      resize: true,
	      colors: ["#ff9763"],
	      data: [
	       	 {label: "카카오페이", value: ${paymentVo.count}}
	      ],
	      hideHover: 'auto'
	    });
	 });
		   
</script>
</body>
</html>