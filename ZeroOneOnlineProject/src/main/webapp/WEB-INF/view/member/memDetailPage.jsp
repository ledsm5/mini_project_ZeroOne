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
	나의 상세정보 <br>
	
	아이디 : ${list[0].memId} <br>     		<!-- dto는   MemberDetailPage 의 dto  -->
	이름 : ${list[0].memName } <br>
	생년월일 :  ${list[0].memBirth } <br>
	성별 : ${list[0].memGender } <br>
	우편번호: ${list[0].postNumber } <br>
	주소 : ${list[0].memAddress } <br>
	상세주소 : ${list[0].detailAdd } <br>
	연락처 : ${list[0].memPhone } <br>
	이메일 : ${list[0].memEmail } <br>
	수신여부 :  
		<c:if test ="${list[0].memEmailCk == 'Y'}">이메일 수신함 </c:if>
		<c:if test ="${list[0].memEmailCk == 'N'}">이메일 수신 안함</c:if><br>
		<a href ="memModPrint?memId=${list[0].memId }">수정</a>
		<%-- <a href = "memMod.mem?memId=${dto.memId }">수정</a>     다르게 주는 이유 ! ==> 세션을 쓰면 굳이   memId 로 꼬리를 날릴필요가 없다.--%>
</body>
</html>