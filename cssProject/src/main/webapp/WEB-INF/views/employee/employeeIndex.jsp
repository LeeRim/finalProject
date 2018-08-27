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
  <!-- fullCalendar -->
  <link rel="stylesheet" href="resources/bower_components/fullcalendar/dist/fullcalendar.min.css">
  <link rel="stylesheet" href="resources/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
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
		height:565px;
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
		font-weight:bold;
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
	    var cKeyFk = ${user.cKeyFk}
	    var eKeyFk= ${user.eKey} 
		$.ajax({
			type:"post",
	        url:"commuteone.do",
	        data : {inHour:h, inMinute:m, cKeyFk:cKeyFk , eKeyFk:eKeyFk},
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
	    var cKeyFk = ${user.cKeyFk}
	    var eKeyFk= ${user.eKey}
		$.ajax({
			type:"post",
	        url:"commuteOut.do",
	        data : {inHour:h, inMinute:m,cKeyFk:cKeyFk,eKeyFk:eKeyFk},
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
   
   <c:import url="../include/left_column_employee.jsp"/>
  
  


  <div class="content-wrapper" style="height: 890px;">

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
              <div class="widget-user-image ">
                <img class="img-circle" src="resources/upload/empPhoto/${sessionScope.user.ePhoto}" style="width:80px; height:80px;"alt="User Avatar">
              </div>
              <!-- /.widget-user-image -->
              <div class="empInfo">
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
        
           <div class="col-md-3">
           <div class="box box-default" style="height:150px; text-align:center;">
               <div class="box-header with-border">
                 <h3 class="box-title" style="padding:10px;"><c:out value="${ipLocation}"></c:out> </h3>
               
                 <!-- /.box-tools -->
               </div>
               <!-- /.box-header -->
               <div class="box-body" >
                 현재시간 <br>
                <div id="clock"></div>
               </div>
               <!-- /.box-body -->
             </div>
             
             <div class="row">
             <div class="box box-default" style="width:48.5%; height:106.5px;">
               <div class="box-header with-border">
                 <h3 class="box-title">출근시간</h3>
              <input type="submit" value="출근" onclick="inTime();" class="btn btn-box-tool" >
                 <!-- /.box-tools -->
               </div>
               <!-- /.box-header -->
               <div id="inTime" class="box-body">
          			
               </div>
               <!-- /.box-body -->
             </div>
             <!-- /.box -->
             
             <div class="box box-default" style="width:48.5%; height:106.5px; margin-left:10px;">
               <div class="box-header with-border">
                 <h3 class="box-title">퇴근시간</h3>
               <input type="submit" value="퇴근" onclick="outTime();" class="btn btn-box-tool" >
                 <!-- /.box-tools -->
               </div>
               <!-- /.box-header -->
               <div id="outTime" class="box-body">
                 
               </div>
               <!-- /.box-body -->
             </div>
             <!-- /.box -->
              </div>
           </div>
           
            <div class="col-md-4" style="margin-top:-9px; width:41%;">
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
           
     </div>      
     
	  
	  <div class="row">
     	<div class="col-md-9" style="width:58.3%;">
          <div class="box box-primary">
            <div class="box-body no-padding">
              <!-- THE CALENDAR -->
              <div id="calendar"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
        </div>
        
        <div class="row">
				<div class="col-md-4" style="margin-top:10px; width:41%">
					<div class="box-body table-responsive no-padding">
						<table class="table table-hover">
							<tr>
								<th colspan="3" style="background:#bcbcbc;">경조사 게시판</th>
							</tr>
							<tr>
								<th class="title">글제목</th>
								<th class="writer">작성자</th>
								<th class="date">작성일</th>
							</tr>
							<c:if test="${board3.size() == 0}">
			    	            <tr>
			                		<td colspan="3" >조회 된 게시글이 없습니다.</td>
			 	               </tr>
			                </c:if>
			                <c:if test="${board3.size() != 0}">
								<c:forEach items="${board3}" var="board3" varStatus="status">
								 <tr data-key="${board3.boardKey}">
									<td class="title"><c:out value="${board3.bTitle}" /></td>
									<td class="writer"><c:out value="${board3.eName}" /></td>
									<td class="date"><c:out value="${board3.bDate}" /></td>
								</tr>
							</c:forEach>
						</c:if>
						</table>
					</div>
				</div>
				 <div class="col-md-4" style="margin-top:15px; width:41%">
					<div class="box-body table-responsive no-padding">
						<table class="table table-hover">
							<tr>
								<th colspan="3" style="background:#bcbcbc;">자유게시판</th>
							</tr>
							<tr>
								<th class="title">글제목</th>
								<th class="writer">작성자</th>
								<th class="date">작성일</th>
							</tr>
							<c:if test="${board2.size() == 0}">
			    	            <tr>
			                		<td colspan="3" >조회 된 게시글이 없습니다.</td>
			 	               </tr>
			                </c:if>
			                <c:if test="${board2.size() != 0}">
							<c:forEach items="${board2}" var="board2" varStatus="status">
								<tr data-key="${board2.boardKey }">
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
     </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</div>



   <c:import url="../include/footer.jsp"/>
   <!-- fullCalendar -->
<script src="resources/bower_components/moment/moment.js"></script>
<script src="resources/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<!-- Page specific script -->
<script>
  $(function () {

    /* initialize the external events
     -----------------------------------------------------------------*/
    function init_events(ele) {
      ele.each(function () {
        var eventObject = {
          title: $.trim($(this).text()) // use the element's text as the event title
        }

        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject)

        // make the event draggable using jQuery UI

      });
    }

    init_events($('#external-events div.external-event'))

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date()
        
    var dataList = [];
 
    //모든 일정을 받아오는 반복문
    <c:forEach items="${list}" var="cal">
    dataList.push({
       title   : '${cal.title}',
        start   : new Date(${cal.startYear}, ${cal.startMonth - 1}, ${cal.startDay} ),
        end      :  new Date(${cal.endYear}, ${cal.endMonth - 1}, ${cal.endDay+1} ),
        backgroundColor: '${cal.background}', 
        borderColor    : '${cal.background}' 
    });
   </c:forEach>
    
    
    $('#calendar').fullCalendar({
    	height: 565, 
    	header    : {
        left  : '',
        center: 'title',
        right : 'prev,next today'
      },
      buttonText: {
          today: 'today'
        },
      //Random default events
      
      events    : dataList,
      displayEventTime : false,
      editable  : false,
      displayEventTime : false,
      droppable : false, // this allows things to be dropped onto the calendar !!!
      drop      : function (date, allDay) { 

        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject')

        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject)

        // assign it the date that was reported
/*         copiedEventObject.start           = date
        copiedEventObject.allDay          = allDay
        copiedEventObject.backgroundColor = $(this).css('background-color')
        copiedEventObject.borderColor     = $(this).css('border-color')
 */
        // render the event on the calendar
        
        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

        // is the "remove after drop" checkbox checked?

      }
    });
  });
</script>
</body>
</html>