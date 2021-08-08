<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
선수리스트.<br><br>
	<form action="#">
	<table border="1">
		<tr>
			<th>선수No.</th>
			<th>선수명</th>
			<th>포지션</th>
			<th>능력치</th>
			<th>시세</th>
			<th></th>
		</tr>
			<c:forEach items="${list }" var="dto">
		<tr>
			<td><a href="plerModDetail?plerNum=${dto.plerNum }">${dto.plerNum }</a></td>       
			<td>${dto.plerName }</td>
			<td>${dto.plerPosition }</td>
			<td>${dto.plerAbility }</td>
			<td>${dto.plerPrice }</td>
			<td><a href="plerDel?plerNum=${dto.plerNum }">삭제하기</a></td>
		</tr>
			</c:forEach>
		<tr><td><input type="button" value="홈으로" onclick="javascript:location.href='../main'"></td></tr>
	</table>
	</form>
	
	
</body>
</html>