<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="empModifyAction" method="post" name="frm">
<input type="hidden" name="employeeNum" value="${emp.employeeNum }"/>
<table border = 1 align="center">
	<tr><td>사원번호</td>
		<td> ${emp.employeeNum}</td>
	</tr>
	<tr><td>사원아이디</td>
		<td>${emp.empId}</td>
	</tr>
	<tr><td>이름</td>
		<td><input type="text" name="empName" value="${emp.empName}"></td>
	</tr>
	<tr><td>연락처</td>
		<td>
			<input type="text" name="empPh" 
		  placeholder="010-1234-1234" value="${emp.empPh }"/>
		</td>
	</tr>
	<tr><td>이메일</td>
		<td>
			<input type="text" name="email" value="${emp.email }"/>
		</td>
	</tr>
	<tr><td>사무실 주소</td>
		<td>
			<input type="text" name="empAddress" 
				value="${emp.empAddress }"/>
		</td>
	</tr>
	<tr><td colspan="2" align="center">
			<input type="submit" value="직원정보 수정" />
			<input type="button" value="직원 삭제" onclick="javascript:location.href='empDelete?employeeNum=${emp.employeeNum }'"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>