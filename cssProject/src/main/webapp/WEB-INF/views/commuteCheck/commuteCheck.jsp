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


  
  <style>
 	.timeInput{
	  font-size: 4em;
	  border:1 #fff;
	  color:#684816;
	  text-align: center;
	  padding: 30px;
	  border-radius: 5px;
	  background: #000;
	  font-weight: bold
	}
  </style>

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
	
	<c:import url="include/left_column.jsp"/>
  
  


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
		<form name="timeForm" style="width: 100%; text-align: center; margin:40px">
  		<input type="text" name="timeInput" class="timeInput" readonly="readonly">
		</form>
		<br/>
		<h1>출근시간</h1><br/>
		<h1 id="inTime"></h1>
		여기에 출근시간이 찍힘
		<h1>퇴근시간</h1><br/>
		<h1 id="outTime"></h1>
		안눌럿을떈 00시00분00초 하고 누르면 나오게<br/>
		<br/>
		<br/>
		<br/>
		<input type="submit" value="출근" >
		<input type="submit" value="퇴근" >
		<input type="submit" value="외근 전용 출근" >
		출근버튼 넣고            퇴근버튼 넣고(아니면 출근 퇴근 switching되게?)
		출장지에서 출근하기를 통해 ip무시하고 넣기도 가능?

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



	<c:import url="include/footer.jsp"/>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
<P>  The time on the server is ${serverTime}. 111</P>
	<script>
	function realtimeClock() {
		  document.timeForm.timeInput.value = getTimeStamp();
		  setTimeout("realtimeClock()", 1000);
		}
		 
		 
		function getTimeStamp() { // 24시간제
		  var date = new Date();
		 
		  var f_date =
		    //년-월-일  시:분:초
		    leadingZeros(date.getFullYear(), 4) + '-' +
		    leadingZeros(date.getMonth() + 1, 2) + '-' +
		    leadingZeros(date.getDate(), 2) + ' ' +
		    leadingZeros(date.getHours(), 2) + ':' +
		    leadingZeros(date.getMinutes(), 2) + ':' +
		    leadingZeros(date.getSeconds(), 2);
		 
		  return f_date;
		}
		 
		//숫자 두자리 ex) 1이면 01 앞에 0을 붙임
		function leadingZeros(date, digits) {
		  var zero = '';
		  date = date.toString();
		 
		  if (date.length < digits) {
		    for (i = 0; i < digits - date.length; i++)
		      zero += '0';
		  }
		  return zero + date;
		}
	</script>
</body>
</html>