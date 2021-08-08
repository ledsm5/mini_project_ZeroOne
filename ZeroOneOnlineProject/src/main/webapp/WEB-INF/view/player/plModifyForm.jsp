<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">
	function fileDel(btn) {
		var delFile = $("#fileDel1").val()
		if($(btn).attr("value") == "삭제"){
			$(btn).attr("value","삭제취소");
			$("#fileDel1").val($())
		}
	}

	
</script>
</head>
<body>
	<h1 style="text-align: center;">선수 업데이트</h1>
	<form:form action="plModAction" name="frm" enctype="multipart/form-data" method="post" modelAttribute="playerCommand">
		
			선수No.<input type="text" name="plerNum" value="${dto.plerNum }" readonly="readonly"> <br> 
			선수명<input type="text" name="plerName" value="${dto.plerName }"><br> 
			포지션<input type="text" name="plerPosition" value=${dto.plerPosition }><br> 
			스탯<input type="text" name="plerAbility" value=${dto.plerAbility }><br> 
			급여<input type="text" name="plerSalary" value=${dto.plerSalary }><br> 
			키<input type="text" name="plerHeight" value=${dto.plerHeight }><br> 
			소속리그
			<select name="plerLeague" value=${dto.plerLeague }>
						<option>프리미어리그</option>
						<option>라리가</option>
						<option>이탈리아 세리아 A</option>
						<option>프랑스 리그1</option>
						<option>레전더리</option>
					</select><br> 
			소속팀<input type="text" name="plerTeam" value=${dto.plerTeam }><br> 
			나이<input type="text" name="plerAge" value=${dto.plerAge }><br> 
			주발<input type="radio" name="plerFoot" value="R" checked="checked">오른발<input type="radio" name="plerFoot" value="L" >왼발 <input type="radio" name="plerFoot" value="B" >양발<br>  
			평점<input type="range" name="plerRate" max="5" step="1" value=${dto.plerRate }><br> 
			개인기<input type="range" name="plerIndiSkill" max="5" step="1" value=${dto.plerIndiSkill }><br> 
			시세<input type="text" name=plerPrice value=${dto.plerPrice }><br> 
			특성<input type="text" name="plerDetail" value=${dto.plerDetail }><br> 
			
			
			이미지 수정 :<br> 
			<c:forTokens items="${dto.plerImage }" delims="," var="plerdImage">
				<span id="fileName">${plerImage }</span>
				<input type="button" id="btn" value="삭제" onclick="fileDel(this)">
			</c:forTokens>
			
		
			파일 추가 :<br> 
					<input type="file" name="plerImage" multiple="multiple">	
					<!--임시삭제  -->
					<input type="text" name="fileDel1" id="fileDel1">	
					<input type="submit" value="수정하기" />
					<input type="button" value="삭제하기" onclick = "javascript:location.href='goodsDel?prodNum=${goodsCommand.prodNum }'" />
	
			<input type="submit" value="등록">
	</form:form>
	
	<a href="plModify">리스트</a>
	<a href="../main">홈으로 </a>
			<!-- <img src="http://s.nx.com/s2/game/fo4/obt/externalAssets/card/21TOTY.png" alt=""> -->
</body>
</html>