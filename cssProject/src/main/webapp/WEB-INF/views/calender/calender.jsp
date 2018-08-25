<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Calendar</title>

  <!-- fullCalendar -->
  <link rel="stylesheet" href="resources/bower_components/fullcalendar/dist/fullcalendar.min.css">
  <link rel="stylesheet" href="resources/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
  <!-- jQuery 3 -->
	<!-- AdminLTE App -->
	<script src="resources/dist/js/demo.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <c:import url="../include/left_column_employee.jsp"/>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
  
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Calendar
        <small>Control panel</small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3" style="margin-left: 0.5%">
          <div class="box box-solid" style="width: 100%;" >
            <div class="box-header with-border">
              <h4 class="box-title">행사 목록</h4>
            </div>
            <div class="box-body" style="width: 100%;" >
              <!-- the events -->
              <div id="external-events" >
                <div class="external-event bg-green">점심행사</div>
                <div class="external-event bg-yellow">회의일정</div>
                <div class="external-event bg-aqua">개인 업무일정</div>
                <div class="external-event bg-light-blue">외부일정</div>
                <div class="external-event bg-red">휴가일정</div>
                <div class="checkbox">
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
		<form method="get" action="insertEvent.do">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Create Event</h3>
            </div>
            <div class="box-body">
              <div class="btn-group" style="width: 100%; margin-bottom: 10px; margin-left: -40px">
                <ul style="list-style-type:none">
               	 <li>일정 이름 입력
				 	<input name="title" type="text" class="form-control" placeholder="Event Title"/>
                	</li>
				 	<li>일정 시작일
				 	<input name="startDate" type="date" class="form-control"/>
				 	</li>
				 	<li>일정 종료일
				 	<input name="endDate" type="date" class="form-control"/>
				 	</li>
				 <li>일정 색<br/>
					<input type="radio" name="background" value="#00a65a"><a class="text-green"><i class="fa fa-square"></i></a> 
					<input type="radio" name="background" value="#f39c12"><a class="text-yellow"><i class="fa fa-square"></i></a> 
					<input type="radio" name="background" value="#00c0ef"><a class="text-aqua"><i class="fa fa-square"></i></a>
					<input type="radio" name="background" value="#0073b7"><a class="text-blue"><i class="fa fa-square"></i></a>
					<input type="radio" name="background" value="#f56954"><a class="text-red"><i class="fa fa-square"></i></a>
				 </li>
                </ul>
              </div>
              	<input type ="hidden" name="cKeyFk" value="${user.cKeyFk}">
                <div class="input-group-btn">
                <input type="submit" value="일정 생성" class="btn btn-primary btn-flat">
                </div>
              <!-- /input-group -->
            </div>
          </div>
         </form>
        </div>
        <!-- /.col -->
        <div class="col-md-9" style="width: 72%;">
          <div class="box box-primary">
            <div class="box-body no-padding">
              <!-- THE CALENDAR -->
              <div id="calendar"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
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
        end		:  new Date(${cal.endYear}, ${cal.endMonth - 1}, ${cal.endDay+1} ),
        backgroundColor: '${cal.background}', 
        borderColor    : '#0073b7' 
    })
	</c:forEach>
    
    
    $('#calendar').fullCalendar({
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
      editable  : false,
      droppable : false, // this allows things to be dropped onto the calendar !!!
      drop      : function (date, allDay) { 

        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject')

        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject)

        // assign it the date that was reported
        copiedEventObject.start           = date
        copiedEventObject.allDay          = allDay
        copiedEventObject.backgroundColor = $(this).css('background-color')
        copiedEventObject.borderColor     = $(this).css('border-color')

        // render the event on the calendar
        
        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

        // is the "remove after drop" checkbox checked?

      }
    })
	  
    
  })


</script>
</body>
</html>
