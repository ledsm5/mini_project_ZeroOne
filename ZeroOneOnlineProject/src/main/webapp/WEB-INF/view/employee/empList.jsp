<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr><td>사원번호</td><td>아이디</td><td>이름</td></tr>

	<c:forEach items="${employeeCommand }" var="dto">
	<tr>
		<td><a href="empDetail?employeeNum=${dto.employeeNum}">${dto.employeeNum }</a></td> 
		<td>${dto.empId }</td>
		<td>${dto.empName }</td>
	</tr>
	</c:forEach>
</table>

<a href="empRegistForm">직원등록</a>
</body>
</html>