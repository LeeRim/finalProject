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
<body>
	<button id="border">서버 전송</button>
	
	
</body>
</html>