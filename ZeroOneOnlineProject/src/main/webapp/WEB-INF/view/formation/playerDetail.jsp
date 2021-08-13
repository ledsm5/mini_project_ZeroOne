<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <!-- 선수 상세 정보   -->
					<div style="position:absolute;z-index:999;display:none;
							background: none rgba(0, 0, 0, 0.9); filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#80000000', endColorstr='#80000000');" align='center'>
							<font size='3'  onclick="CloseSearch('${name.positionNum }')">x</font>
						<table valign="middle" height=100% >
								<br>선수명    ${dtoP.plerName }<br>								
								<div class="tb_ul1">
									<ul>										
										<li>능력치&nbsp;${dtoP.plerAbility }	</li>
										<li>포지션 &nbsp;${dtoP.plerPosition }</li>
										<li>시세 &nbsp;${dtoP.plerPrice }</li>
										<li>급여 &nbsp;${dtoP.plerSalary }</li>
										<li>키&nbsp;${dtoP.plerHeight }</li>										
									</ul>
								</div>	
								<div class="tb_ul2">
									<ul>
										<li>시즌&nbsp;${dtoP.plerSession }</li>
										<li>소속리그 &nbsp;${dtoP.plerLeague }	</li>
										<li>소속팀&nbsp;${dtoP.plerTeam }</li>
										<li>개인기 &nbsp;${dtoP.plerIndiSkill }</li>
										<li>주발 &nbsp;${dtoP.plerFoot }</li>										
									</ul>
								</div>								
						</table>
					</div>	 --%>	
					<table border="1" style="width:200px;"> 
					<input type="image" alt="왜없내" src="../player/upload/${dtoView.plerImage.split(',')[0] }" style="width: 200px; height: 200px;" >
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
						<tr><td></td></tr>
					</table>									
</body>
</html>