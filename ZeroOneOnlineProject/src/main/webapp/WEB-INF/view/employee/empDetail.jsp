<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
사원번호 : ${emp.employeeNum }<br />
아이디: ${emp.empId }<br />
이름 : ${emp.empName }<br />
연락처 : ${emp.empPh }<br />
이메일: ${emp.email }<br />
주소 : ${emp.empAddress }<br />
<a href="empModify?employeeNum=${emp.employeeNum }">수정</a> | 
<a href="empList" >리스트로 가기</a>  
</body>
</html>