<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div onclick="location.href='formation'" style="font-size: 20px; color: white;">x</div>
	<table border="1" style="width:200px; font-size: 20px; color: white;" > 
		<tr><td>이름</td><td>${dtoView.plerName }</td></tr>
		<tr><td>가격</td><td>${dtoView.plerPrice }</td></tr>
		<tr><td>포지션</td><td>${dtoView.plerPosition }</td></tr>
		<tr><td>능력치</td><td>${dtoView.plerAbility }</td></tr>
		<tr><td>시즌</td><td>${dtoView.plerSession }</td></tr>
		<tr><td>급여</td><td>${dtoView.plerSalary }</td></tr>
		<tr><td>리그</td><td>${dtoView.plerLeague }</td></tr>
		<tr><td>팀</td><td>${dtoView.plerTeam }</td></tr>
		<tr><td>개인기</td><td>${dtoView.plerIndiSkill }</td></tr>
		<tr><td>키</td><td>${dtoView.plerHeight }</td></tr>
		<tr><td>주발</td><td>${dtoView.plerFoot }</td></tr>
		
	</table>									
</body>
</html>