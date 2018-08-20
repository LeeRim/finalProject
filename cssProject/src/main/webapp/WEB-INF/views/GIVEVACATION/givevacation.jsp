<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url ="/WEB-INF/views/include/header.jsp"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
    // 옵션추가 버튼 클릭시
    $("#table1").click(function(){
        // item 의 최대번호 구하기
        var lastItemNo = $("#table1 tr:last").attr("class").replace("item", "");

        var newitem = $("#table1 tr:eq(1)").clone();
        newitem.removeClass();
        newitem.find("td:eq(0)").attr("rowspan", "1");
        newitem.addClass("item"+(parseInt(lastItemNo)+1));

        $("#table1").append(newitem);
    });

</script>
</head>
<body>
	<table id="table1" border="1">
		<tr>
			<td>근로년수</td>
			<td>지급일수</td>
		</tr>
		<tr class="item1">
			<td><input type="text" value="1" readonly/></td>
			<td><input type="text" value="12"/></td>
		</tr>
		<tr class="item2">
			<td><input type="text" value="2" readonly/></td>
			<td><input type="text" value="12"/></td>
		</tr>
		<tr class="item3">
			<td><input type="text" value="3" readonly/></td>
			<td><input type="text" value="12"/></td>
		</tr>
		<tr class="item4">
			<td><input type="text" value="4" readonly/></td>
			<td><input type="text" value="15"/></td>
		</tr>
		<tr class="item5">
			<td><input type="text" value="5" readonly/></td>
			<td><input type="text" value="15"/></td>
		</tr>
		<tr class="item6">
			<td><input type="text" value="6" readonly/></td>
			<td><input type="text" value="15"/></td>
		</tr>
	</table>
	<button onclick="addRow();">근로년수 추가</button>
	
	
	
	
<c:import url="/WEB-INF/views/include/footer.jsp"/>
</body>
</html>
