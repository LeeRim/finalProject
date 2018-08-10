<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Create Event</h3>
            </div>
            <div class="box-body">
              <div class="btn-group" style="width: 100%; margin-bottom: 10px; margin-left: -40px">
                <!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
                <ul style="list-style-type:none">
                <li>일정 이름 입력</li>
				 <input name="title" type="text" class="form-control" placeholder="Event Title">
				 <li>일정 시작일</li>
				 <input name="startDate" type="date">
				 <li>일정 종료일</li>
				 <input name="endDate" type="date">
				 <li>일정 색</li>
					<input type="radio" name="background" value="#00a65a">초록
					<input type="radio" name="background" value="#f39c12">노랑
					<input type="radio" name="background" value="#00c0ef">하늘
					<input type="radio" name="background" value="#0073b7">파랑
					<input type="radio" name="background" value="#f56954">빨강
                </ul>
              </div>
                <div class="input-group-btn">
                  <button id="addEvent" type="button" class="btn btn-primary btn-flat">Add</button>
                </div>
              <!-- /input-group -->
            </div>
          </div>
</body>
</html>