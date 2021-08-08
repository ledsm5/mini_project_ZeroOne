<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>agree.jsp</title>
</head>
<body>
<img src="https://ssl.nexon.com/S2/membership/2011/join2/tit_useragreement.gif" width="106" height="30" alt="약관동의"><hr><br><br>
<form action="agreeVal" method="post">
	<input type="checkbox" name="agree" >
	<label for="uaAll">제로원 서비스 이용약관, 개인정보 수집 및 이용, 유효기간 5년,<br> &nbsp; 프로모션 정보 수신 에 모두 동의합니다.</label><br />
	<span>${errAgree }</span><br />
	<input type="submit" value="다음" />
</form>
</body>
</html>