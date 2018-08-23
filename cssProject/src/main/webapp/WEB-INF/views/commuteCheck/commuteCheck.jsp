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
	<script>
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
    	var sum = new Date(year, month, date);
    	var timeSum = new Date(h,m,s);
		$.ajax({
			type:"post",
	        url:"commuteone.do",
	        data : {inHour:h, inMinute:m},
	        success: function(data){
	        	 document.getElementById('inTime').innerHTML =
	        		 h + "시" + m+ "분"+ s + "초"
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
	    	var sum = new Date(year, month, date);
	    	var timeSum = new Date(h,m,s);
			$.ajax({
				type:"post",
		        url:"commuteOut.do",
		        data : {inHour:h, inMinute:m},
		        success: function(data){
		        	 document.getElementById('outTime').innerHTML =
		        		 h + "시" + m+ "분"+ s + "초"
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
	
	<c:import url="/WEB-INF/views/include/left_column.jsp"/>
  

  <div class="content-wrapper" style="height: 100%;">

    <section class="content-header">
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		
		<h1>현재시간</h1><br/>
		<form name="timeForm" style="width: 20%; text-align: center; margin:20px">
  		<div id="clock"></div>
		</form>
		<div id="date"></div>
		<h1>현재 IP주소</h1>
		<div><c:out value="${ipLocation}"></c:out></div>
		<h1>출근시간</h1><br/>
		<div id="inTime"></div>
		<input type="submit" value="출근" onclick="inTime();">
		<h1>퇴근시간</h1><br/>
		<div id="outTime"></div>
		<input type="submit" value="퇴근" onclick="outTime();">
		
		<h1>출근 목록 출력</h1>
		<input type="button" value="사원출근체크" onclick="window.open('commuteList.do', 'check', 'width=300px, height=300px')">
		<input type="button" value="회사원출근체크" onclick="window.open('commuteAllList.do', 'check', 'width=300px, height=300px')">

		
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="/WEB-INF/views/include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
<P>  The time on the server is ${serverTime}. 111</P>

</body>
</html>