<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
   <c:import url="/WEB-INF/views/include/left_column.jsp"/>
	<div class="content-wrapper">
	<section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
    <div class="row" style="width:95%; margin-right:auto; margin-left:auto; margin-top:20px;">
	<div class="box-body table-responsive no-padding">
              <table class="table table-hover">
              	
                <tr>
                  <th>번호</th>
                  <th>작성자</th>
                  <th>글제목</th>
                  <th>조회수</th>
                  <th>작성일</th>
                </tr>
              <c:forEach items="${board1}" var="board1">
                <tr>
                  <td><c:out value="${board1.boardKey }"/></td>
                  <td><c:out value="${board1.eName }"/></td>
                  <td><c:out value="${board1.bTitle }"/></td>
                  <td><span class="label label-danger"><c:out value="${board1.bCount }"/></span></td>
                  <td><c:out value="${board1.bDate }"/></td>
                </tr>
              </c:forEach>
              </table>
            </div>
	
	</div>
</div>
</div>
	
	
	<c:import url="../include/footer.jsp"/>
</body>
</html>