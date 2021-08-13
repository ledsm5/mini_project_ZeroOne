<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/includeTags.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
		list-style:none;
		text-decoration:none;
		margin: 0;
		padding:0;
	}
	#wrap{
		width: 100%;
	}
	#top{
		display: block;
    	clear: both;
   	 	content: "";
    	float: left;
    	width: 70%;
    	box-sizing: border-box;
	}
	#search_bar{
		
		height: 100px;
    	
	}
	#team_fm{
		height: 900px;
   	 	background-image:url("../images/stra6_fifa.jpg");
   	 	background-repeat:no-repeat;
   	 	background-size:cover;
    	float: left;
   	 	width: 100%;
	}
	#squad_list{
		width: 30%;
  	  	float: right;
   	 	height: 1000px;
    	background-color: #2B1640;
    	opacity:0.8;
    	border-left: 3px solid black;
    	box-sizing: border-box;
    

	}
	#squad_list > a {
		color:white;
	}
	
	.buttonSelector > button {
		width: 50px;
		height: 50px;
	}
	
	.list_tb {
		margin-top: 30px;
		margin-left: 20px;
	}
	
	
	
	.list_tb { 
		color:	#f5fffa;
	}
	
	#positionNum1DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum2DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum3DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum4DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum5DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum6DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum7DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum8DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum9DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum10DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
	#positionNum11DT {
		color: white;
		background: white;
		width:400px;
		height:400px;
	}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="wrap">
		<div id="top"> 
			<div id="search_bar">
				<form action="searchedPl">
					<input type="search" name="plerName" value="${err2 }">
					<input type="submit" value="검색">
				
				</form>
				
				<form action="addPlayer">
					${dto.plerName } ${err } ${alreadyErr }
					<input type="submit" value="내 팀에 틍록">
					<input type="hidden" name="plerName" value="${dto.plerName }">
					<input type="hidden" name="plerPosition" value="${dto.plerPosition }">
					<input type="hidden" name="plerAbility" value="${dto.plerAbility }">
					<input type="hidden" name="plerSalary" value="${dto.plerSalary }">
					<input type="hidden" name="plerPrice" value="${dto.plerPrice }">
				</form>
			</div>
			
			



			
			<!-- 포메이션  -->
			<div id="notice_content">
			<div id="team_fm">
				포메이션     
				<div class="buttonSelector">
				
				<!--상세정보   -->
					<c:forEach items="${listFor }" var="name">
					<table>		
						<tr>
							<td class="btnMaker">													
								<input type="image" alt="왜없내" src="../player/upload/${name.plerImage.split(',')[0] }" style="width: 200px; height: 200px;" class="${name.positionNum }img" ><br>
														
									<button onclick="playerView('${name.plerName}')" >선수정보</button>							
									<button onclick="sel('${name.positionNum }')">방출</button>
															
							</td>
							<td>		
								<input type="hidden" value="${name.positionNum }" class="${name.positionNum }">
							</td>
						<tr>	
					</table>
					</c:forEach>
							
							<c:forEach var="i" begin="1" end="11">				
								<input type="button" class="positionNum${i }" id="positionNum${i }" name="positionNum${i }" value="선수${i }" onclick="run(${i })"><br>
							</c:forEach>
								
				</div>
				
			</div>
		</div> 
	</div>	


			<!-- 선수단  -->
			<div id="squad_list">
				<div class="list_tb">
					<h2>선수단</h2>
					<form:form action="formationRegist" name="frmJoin" method="get" modelAttribute="formationCommand">	
						<input type="hidden" name="plerName" >
						<input type="hidden" name="positionNum" >	
						
					</form:form>
					<table border="1">					
							<tr><td>선수이름</td><td>포지션</td><td>스탯</td><td>주급</td><td></td><td></td></tr>
							<c:forEach items="${list }" var="list" varStatus="cnt">
								<tr>
									<td>${list.plerName }</td>
									<td>${list.plerPosition }</td>
									<td>${list.plerAbility }</td>
									<td>${list.plerSalary }</td>
									<td><a href="squadDel?plerName=${list.plerName }">방출하기</a></td>
									<td><input type="button" value="등록" onclick="aaa('${list.plerName }')"></td>
								</tr>
							</c:forEach>		
						<%-- <c:if test="${list.memId == null }">
							선수단이 없습니다 
						</c:if> --%>
					</table>	
				</div>				
			</div>
	</div>


<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.js"></script>
<script type="text/javascript">

/* JS */	
 
 
 function playerView(name) {
	location.href = 'plerDetailView?plerName=' +name;
}
 
 

	const DTpositionNum1 = document.getElementById("positionNum1DT");
	const DTpositionNum2 = document.getElementById("positionNum2DT");
	const DTpositionNum3 = document.getElementById("positionNum3DT");
	const DTpositionNum4 = document.getElementById("positionNum4DT");
	const DTpositionNum5 = document.getElementById("positionNum5DT");
	const DTpositionNum6 = document.getElementById("positionNum6DT");
	const DTpositionNum7 = document.getElementById("positionNum7DT");
	const DTpositionNum8 = document.getElementById("positionNum8DT");
	const DTpositionNum9 = document.getElementById("positionNum9DT");
	const DTpositionNum10 = document.getElementById("positionNum10DT");
	const DTpositionNum11 = document.getElementById("positionNum11DT");
    
    function ViewSearch(event){
    	eval('DT'+event[1]).style.display='inline';
        location.href = 'forDetail?plerName='+ event[0];
       	ViewSearch(event);
    }
	function CloseSearch(event){
		eval('DT'+event).style.display='none'
    }

	
/* 
	function pop() {
    	window.open("https://blog.naver.com/hyoyeol/70184157539","naver","width =600, height = 600")
    } */

const fmNum1 = document.querySelector('.positionNum1');
const fmNum2 = document.querySelector('.positionNum2');
const fmNum3 = document.querySelector('.positionNum3');
const fmNum4 = document.querySelector('.positionNum4');
const fmNum5 = document.querySelector('.positionNum5');
const fmNum6 = document.querySelector('.positionNum6');
const fmNum7 = document.querySelector('.positionNum7');
const fmNum8 = document.querySelector('.positionNum8');
const fmNum9 = document.querySelector('.positionNum9');
const fmNum10 = document.querySelector('.positionNum10');
const fmNum11 = document.querySelector('.positionNum11'); 
	


const fmId1 = fmNum1.value;
const fmId2 = fmNum2.value;
const fmId3 = fmNum3.value;
const fmId4 = fmNum4.value;
const fmId5 = fmNum5.value;
const fmId6 = fmNum6.value;
const fmId7 = fmNum7.value;
const fmId8 = fmNum8.value;
const fmId9 = fmNum9.value;
const fmId10 = fmNum10.value;
const fmId11 = fmNum11.value; 


const selector1 = document.getElementById(fmId1);
const selector2 = document.getElementById(fmId2);
const selector3 = document.getElementById(fmId3);
const selector4 = document.getElementById(fmId4);
const selector5 = document.getElementById(fmId5);
const selector6 = document.getElementById(fmId6);
const selector7 = document.getElementById(fmId7);
const selector8 = document.getElementById(fmId8);
const selector9 = document.getElementById(fmId9);
const selector10 = document.getElementById(fmId10);
const selector11 = document.getElementById(fmId11); 




	bbb();
	//데이터 있는 포지션 hidden 만들기
	function bbb() {		
		for(let i=1; i<12; i++) {
			if(eval('selector'+i) != null){
		    	eval('selector'+i).style.visibility='hidden';	 
		    	
			}
		}
	}


	//버튼생성 
	function run(array) {
		frmJoin.positionNum.value="positionNum"+array;		
	}

	//hidden에 값넣고 전송 
	function aaa(event) {
		frmJoin.plerName.value = event;
		frmJoin.submit();	
		
	}
	
	
	function sel(aaa){
		
		const returnCon = confirm("방출 하시겠습니까?");
		
		if(returnCon){
		console.log(aaa);
			location.href = 'forDel?positionNum=' +aaa;
			
		}
	}
    
	
	
	   
        
        
        
/* document.getElementById('btn1').style.visibility='hidden'; */        
/*
function erchk() {
        if (document.getElementById("but").value == "") {
            alert("내용을 입력해주세요");
            return false;
  }else
   document.frmButton.submit();
        const numSelect = document.querySelector(".buttonSelector")
        const checkBoxTd = document.querySelector(".checkBoxTd");
        const chbox = document.querySelector(".chbox");



function regist() {
    numSelect.addEventListener('click', e => {
    	const chb = document.createElement("input");
        chb.type="checkbox";
        checkBoxTd.appendChild(chb);
        chb.className = 'chbox';
        chb.name='chbox';
        chb.value='Y';
       
    });
} 
 */
 
</script>

</body>
</html>