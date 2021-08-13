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
		height: 1300px;
   	 	background-image:url("../images/stra6_fifa.jpg");
   	 	background-repeat:no-repeat;
   	 	background-size:cover;
    	float: left;
   	 	width: 100%;
	}
	#squad_list{
		width: 30%;
  	  	float: right;
   	 	height: 1400px;
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
		color:	#f5fffa;
	}
	
	/* input[type="button" i] {
		color : red;
	} */
	
	.btnMaker{position:relative;}
	.btnMaker>div{width:170px;}
	.card_back{position:relative; z-index:1;}/*카드백그라운드*/
	.card_back>img{width:100%;}
	.btnMaker>div>p{position:absolute; top:64px; left:18px;z-index:2;}/*손흥민*/
	/*카드버튼*/
	.card_Btn{position:absolute; bottom:37px; left:40px; z-index:3;}
	
	.positionNum1 {position:absolute;bottom:400px;left:200px;}
	.positionNum2 {position:absolute;bottom:400px;left:500px;}
	.positionNum3 {position:absolute;bottom:400px;left:800px;}
	.positionNum4 {position:absolute;bottom:150px;left:200px;}
	.positionNum5 {position:absolute;bottom:150px;left:500px;}
	.positionNum6 {position:absolute;bottom:150px;left:800px;}
	.positionNum7 {position:absolute;bottom:-100px;left:200px;}
	.positionNum8 {position:absolute;bottom:-100px;left:400px;}
	.positionNum9 {position:absolute;bottom:-100px;left:600px;}
	.positionNum10 {position:absolute;bottom:-100px;left:800px;}
	.positionNum11 {position:absolute;bottom:-200px;left:500px;}
	
	#positionNum1Maker {position:absolute;bottom:350px;left:200px;}
	#positionNum2Maker {position:absolute;bottom:350px;left:500px;}
	#positionNum3Maker {position:absolute;bottom:350px;left:800px;}
	#positionNum4Maker {position:absolute;bottom:50px;left:200px;}
	#positionNum5Maker {position:absolute;bottom:50px;left:500px;}
	#positionNum6Maker {position:absolute;bottom:50px;left:800px;}
	#positionNum7Maker {position:absolute;bottom:-100px;left:200px;}
	#positionNum8Maker {position:absolute;bottom:-100px;left:400px;}
	#positionNum9Maker {position:absolute;bottom:-100px;left:600px;}
	#positionNum10Maker {position:absolute;bottom:-100px;left:800px;}
	#positionNum11Maker {position:absolute;bottom:-200px;left:500px;}
	
	

/* add default color for animation start  */


/* toggle this class */

.color-bg-start {
  background-color: salmon;
}


/* toggle class bg-animate-color */

.bg-animate-color {
  animation: random-bg .5s linear infinite;
}


/* add animation to bg color  */

@keyframes random-bg {
  from {
    filter: hue-rotate(0);
  }
  to {
    filter: hue-rotate(360deg);
  }
}

#fun-btn {
  /* change bg color to get different hues    */
  background-color: salmon;
  color: white;
  padding: 2em 3em;
  border: none;
  transition: all .3s ease;
  border-radius: 5px;
  letter-spacing: 2px;
  text-transform: uppercase;
  outline: none;
  align-self: center;
  cursor: pointer;
  font-weight: bold;
}

#fun-btn:hover {
  animation: random-bg .5s linear infinite, grow 1300ms ease infinite;
}

.start-fun {
  background-color: #fff !important;
  /* change color of button text when fun is started   */
  color: salmon !important;
}

/* pulsating effect on button */
@keyframes grow {
  0% {
    transform: scale(1);
  }
  14% {
    transform: scale(1.3);
  }
  28% {
    transform: scale(1);
  }
  42% {
    transform: scale(1.3);
  }
  70% {
    transform: scale(1);
  }
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
					<c:forEach items="${listFor }" var="name">
					<table>		
						<tr>
							<td class="btnMaker" id="${name.positionNum }Maker">
								<div>
									<div class="card_back">
										<img src="../images/21TOTN.png">												
									</div>
									<p><input type="image" alt="왜없내" src="../player/upload/${name.plerImage.split(',')[0] }" class="${name.positionNum }img" ></p>
									<div class="card_Btn">
										<button onclick="playerView('${name.plerName}')" class="${name.plerName}">선수정보</button>							
										<button onclick="sel('${name.positionNum }')">방출</button>
									</div>
								</div>
								<!-- 선수 상세 -->
								<div id="pler_view"></div>															
							</td>
							<td>		
								<input type="hidden" value="${name.positionNum }" class="${name.positionNum }">
							</td>
						<tr>	
					</table>
					</c:forEach>
						<div class="button_for_i">
							<c:forEach var="i" begin="1" end="11">				
								<input type="button" class="positionNum${i }" id="fun-btn" name="positionNum${i }" value="선수${i }" onclick="run(${i })"><br>
							</c:forEach>
						</div>		
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
							<tr><td>선수이름</td><td>포지션</td><td>스탯</td><td>주급</td><td>방출</td><td>등록</td></tr>
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
/* AJAX */
function playerView(name) {
	/* location.href = 'plerDetailView?plerName=' +name; */
	$.ajax({
		type : "post",
		url : "plerDetailView",
		data : "html",
		data : "plerName=" + name,
		success : function(result) {
			$("#pler_view").html(result);
		},
		error: function() {
			alert("에러!");
			return;
		}
	});
}

/* JS */	
 
 
	
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
 $('#fun-btn').on('click', function(event) {
	  $(this).toggleClass('start-fun');
	  var $page = $('.page');
	  $page.toggleClass('color-bg-start')
	    .toggleClass('bg-animate-color');

	  //change text when when button is clicked

	  $(this).hasClass('start-fun') ?
	    $(this).text('stop the fun') :
	    $(this).text('start the fun');

	});
</script>

</body>
</html>