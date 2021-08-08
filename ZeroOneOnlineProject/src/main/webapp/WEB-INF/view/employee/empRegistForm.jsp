<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<form:form action="empRegistAction" method="post" modelAttribute="employeeCommand">
 		<table border="1">
 			<tr><td>직원번호 : </td>
 				<td> <input type="text" name="employeeNum" value="${employeeCommand.employeeNum }" readonly="readonly">
				<form:errors path="empId"></form:errors></td>
 			</tr>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="empId">
				<form:errors path="empId"></form:errors></td>
			</tr>
			<tr>
				<td>비밀번호:</td>
				<td><input type="password" name="empPw">
				<form:errors path="empPw"></form:errors></td>
			</tr>
			<tr>
				<td>비밀번호확인:</td>
				<td><input type="password" name="empPwCon">
				<form:errors path="empPwCon"></form:errors></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="empName">
				<form:errors path="empName"></form:errors></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="empPh">
				<form:errors path="empPh"></form:errors></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email">
				<form:errors path="empPw"></form:errors></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="empAddress">
				<form:errors path="empAddress"></form:errors></td>
			</tr>
		</table>
 		<input type="submit" value="등록하기"> 
 	</form:form>
</body>
</html>
