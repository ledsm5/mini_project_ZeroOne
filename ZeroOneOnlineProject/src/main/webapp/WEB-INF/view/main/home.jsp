<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin: 0px;
	padding: 0px;
	list-style: none;
	text-decoration: none;		
}

.wrap{
	height: 1030px;
}

.header{
	height: 30px;
	
}



.content{
	height: 800px;
	background: url("images/messi.jpeg");
	
}

.footer{
	height: 200px;
	background: #3c3c3c;
	
}



</style>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<c:if test="${empty authInfo }">
				<a href="memJoin/agree">회원가입</a>
			</c:if>
			
			<c:if test="${!empty authInfo }">
				<a href="fm/formation">포메이션</a>
				<a href="pl/playerHome">선수등록</a>
				<a href="emp/empList">직원리스트</a>
				<a href="mem/memList">회원리스트</a>
				<a href="login/logout">로그아웃</a>
			</c:if>
		</div>
		<div class="content">
		</div>
		<div class="footer">
		</div>
	</div>
</body>
</html>