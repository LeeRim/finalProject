<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<table>
				<thead>
					<tr>
						<th>사원번호</th>
						<th>출근일 </th>
						<th>출근시간</th>
						<th>퇴근시간</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="commute">
					<tr>
						<td>${commute.employeeNumber}</td>
						<td>${commute.inDate}</td>
						<td>${commute.strInTime}</td>
						<td>${commute.strOutTime}</td>
					</tr>
				</c:forEach>
			</table>
</body>
</html>