<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">

<style>
body,h1,h5 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url("images/msn.jpg");
  min-height: 100%;
  background-position: center;
  background-size: 33%;
  margin-top:40px;
}
/* .header{
	color:#4B0082;
}
 */
</style>
</head>
<body>



<div class="bgimg w3-display-container w3-text-white">
  <div class="w3-display-middle w3-jumbo">
  <!--   <p class="header">01온라인</p> -->
  </div>
  <div class="w3-display-topleft w3-container w3-xlarge">
    <p><button onclick="document.getElementById('contact').style.display='block'" class="w3-button w3-black">로그인</button></p>
  </div>
  <div class="w3-display-bottomleft w3-container">
    <p class="w3-xlarge">EA sports</p>
    <p class="w3-large">01 online game</p>
    <p>made by zeroone<a href="https://www.github.com/ledsm5" target="_blank">  개발자 깃허브</a></p>
  </div>
</div>


<!-- Contact Modal -->
<div id="contact" class="w3-modal"  >
  <div class="w3-modal-content w3-animate-zoom" style="width:400px;">
    <div class="w3-container w3-black">
      <span onclick="document.getElementById('contact').style.display='none'" class="w3-button w3-display-topright w3-large">x</span>
      <h1>로그인</h1>
    </div>
    <div class="w3-container" style="width: 360px; height: 260px; ">
      <p>회원 정보를 입력해주세요 </p>
		<form:form action="login" method ="post" name="frm" modelAttribute="loginCommand">
			<table border="1" >
				<tr>
					<td colspan="3">
						아이디저장 <input type="checkbox" name="idStore" <c:if test="${!empty isId }">checked</c:if>>|
						자동로그인<input type="checkbox" name="autoLogin"> 						
					</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="userId" value="${isId }" class="w3-input w3-padding-16 w3-border">
						<form:errors path="userId"></form:errors>
					</td>
					<td rowspan="2">
						<input type="image" src="images/gam2.jpg" alt="로그인" width="60px" height="60px" >
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" name="userPw" class="w3-input w3-padding-16 w3-border">
						<form:errors path="userPw"></form:errors>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
	</div>		
</div>
		
<a href="memJoin/agree">회원가입</a>		
	
</body>
</html>