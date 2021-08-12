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
</head>
<body>
	


<!-- 동기식   -->
<c:if test="${n == 1 }">

 			<div id="team_fm">
 			
				포메이션      <button >A</button>   <button >B</button> <button >C</button>
				<div class="buttonSelector">
					<c:forEach items="${listFor }" var="name">
					<table>		
						<tr>
							<td class="btnMaker">												
								<input type="image"  src="../player/upload/${name.plerImage.split(',')[0] }" style="width: 200px; height: 200px;" class="${name.positionNum }img" ><br>
														
									<button onclick="ViewSearch(['${name.plerName }','${name.positionNum }'])" >선수정보</button>							
									<button onclick="sel('${name.positionNum }')">방출</button>
															
							</td>
							<td>		
								<input type="hidden" value="${name.positionNum }" class="${name.positionNum }">
							</td>
						<tr>	
					</table>
					<!-- 선수 상세 정보   -->
					<div id="${name.positionNum }DT" style="position:absolute;z-index:999;display:none;
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
					</div>		
					</c:forEach>
							
							<c:forEach var="i" begin="1" end="11">				
								<input type="button" class="positionNum${i }" id="positionNum${i }" name="positionNum${i }" value="선수${i }" onclick="run(${i })"><br>
							</c:forEach>
								
				</div>
				
			</div>
		
				
</c:if>

<script type="text/javascript">



/* JS */	
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
		frmJoin.plerName.value = event[0];
		frmJoin.plerPosition.value = event[1];
		frmJoin.plerAbility.value = event[2];
		frmJoin.plerSalary.value = event[3];
	
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