<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center;">선수등록</h1>
	<form:form action="plRegistAction" name="frm" enctype="multipart/form-data" modelAttribute="playerCommand" >
		<table border="1"  align="center" style="width: 400px;">
			<tr><td>선수No.</td><td><input type="text" name="plerNum" value="${plerNum }" readonly="readonly"></td></tr> 
			<tr><td>선수명</td><td><input type="text" name="plerName"></td></tr> 
			<tr><td>시즌</td><td><input type="text" name="plerSession"></td></tr> 
			<tr><td>포지션</td><td><input type="text" name="plerPosition"></td></tr> 
			<tr><td>능력치</td><td><input type="text" name="plerAbility"></td></tr> 
			<tr><td>급여</td><td><input type="text" name="plerSalary" ></td></tr> 
			<tr><td>키</td><td><input type="text" name="plerHeight" ></td></tr> 
			<tr><td>소속리그</td>
				<td><select name="plerLeague">
						<option>프리미어리그</option>
						<option>라리가</option>
						<option>이탈리아 세리아 A</option>
						<option>프랑스 리그1</option>
						<option>레전더리</option>
					</select></td></tr> 
			<tr><td>소속팀</td><td><input type="text" name="plerTeam"></td></tr> 
			<tr><td>나이</td><td><input type="text" name="plerAge"></td></tr> 
			<tr><td>주발</td><td><input type="radio" name="plerFoot" value="R" checked="checked">오른발<input type="radio" name="plerFoot" value="L" >왼발 <input type="radio" name="plerFoot" value="B" >양발</td></tr> 
			<tr><td>평점</td><td><input type="range" name="plerRate" max="5" step="1"></td></tr> 
			<tr><td>개인기</td><td><input type="range" name="plerIndiSkill" max="5" step="1"></td></tr> 
			<tr>
				<td>시세</td>
				<td>
					<input type="text" name=plerPrice>
					<form:errors path="plerPrice" />
				</td>				
			</tr> 
			 
			<tr><td>특성</td><td><input type="text" name="plerDetail"></td></tr> 
			<tr><td>사진</td><td><input type="file" name="plerImage" multiple="multiple"></td></tr> 
			<!-- <img src="http://s.nx.com/s2/game/fo4/obt/externalAssets/card/21TOTY.png" alt=""> -->
			<tr><td rowspan="1"><input type="submit" value="등록"> </td><tr>
		</table>
	</form:form>
</body>
</html>