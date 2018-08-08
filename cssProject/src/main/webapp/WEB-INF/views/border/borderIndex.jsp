<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
$("#submit11").click(function(){
	$.ajax({
		url : "/mwp/test11.do",
		type : "get",
		success : function(data){
			console.log(data);
			var $table = $("#outputTable");
			var resultStr = "<tr><th>아이디</th><th>이름</th>" + 
														"<th>나이</th></tr>";
			for(var key in data){
				console.log(key);
				var user = data[key];
				resultStr += "<tr>";
				resultStr += "<td>" + user.userId + "</td>";
				resultStr += "<td>" + user.userName + "</td>";
				resultStr += "<td>" + user.age + "</td>";
				resultStr += "</tr>";
			}
			$table.html(resultStr);
		},error : function(e){
			console.log(e);
		}
	});
});
</script>
</head>
<body>
	<h3>11. Gson 이용해서 Map 출력</h3>
	<button id="submit11">서버 전송</button>
	<table id="outputTable">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>나이</th>
		</tr>
	</table>
	
</body>
</html>