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
$("#border").click(function(){
	$.ajax({
	    url : "Boardcategory.do", 
	    type : "post",
	    success : function(data){
	          console.log(data);
	          var str = "";
	          for(index in data){
	             str += '<div class="w3-container w3-card w3-white w3-round w3-margin"><br>'+
	               '<table id="fileTb" cellspacing="0" align="center" class="w3-margin-bottom">'+
	               '    <tr>'+
	               '        <td>'+
	               '        </td>'+
	               '        <td>'+
	               '        </td>'+
	               '    </tr>'+
	               '    <tr>'+
	               '        <td>'+
	               '        </td>'+
	               '        <td>'+
	               '        </td>'+
	               '    </tr>'+
	               '</table>'+
	           '</div>';
	          }
	          $("#contentDiv").append($(str));
	    },error : function(e){
	       console.log("요청 실패!!");
	    }
	 }); 
});

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
	<button id="border">게시판 불러오기</button>
	</div>
</div>
</div>
	
	
	<c:import url="../include/footer.jsp"/>
</body>
</html>