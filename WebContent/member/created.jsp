<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<!-- 링크가져오기 -->
<link rel="stylesheet" href="/member/data/join.css" type="text/css"/>
<!-- 헤어 가져올때 JSP 라이브러리  -->
<script src='./lib/jquery-3.5.1.min.js'></script>
<!-- utill.js 파일 참조 -->
<script src="/member/data/util.js"></script>
<script>
// 회원가입 버튼을 눌렀을 때 메소드
	function sendIt(){
		
		var f= document.myForm;
		
		// 아이디를 입력 안할 때
		str=f.userId.value;
		str=str.trim();
		if(!str){
			alert("아이디를 입력하세요!");
			f.userId.focus();
			return;
		}
		f.userId.value=str;
		
		// 패스워드를 입력 안할 때 
		str=f.userPwd.value;
		str=str.trim();
		if(!str){
			alert("패스워드를 입력하세요!");
			f.userPwd.focus();
			return;
		}
		f.userPwd.value=str;
		
		//이름을 입력 안할 때
		str=f.userName.value;
		str=str.trim();
		if(!str){
			alert("이름을 입력하세요!");
			f.userName.focus();
			return;
		}
		f.userName.value=str;
		
		//생일을 입력 안할 때
		str=f.userBirth.value;
		str=str.trim();
		if(!str){
			alert("생일을 입력하세요!");
			f.userBirth.focus();
			return;
		}
		f.userBirth.value=str;
		
		//전화번호를 입력 안할 때
		str=f.userTel.value;
		str=str.trim();
		if(!str){
			alert("전화번호를 입력하세요!");
			f.userTel.focus();
			return;
		}
		f.userTel.value=str;
		
		//질문을 입력 안할 때
		str=f.userAnswer.value;
		str=str.trim();
		if(!str){
			alert("질문을 입력하세요!  ex) 00초등학교 ");
			f.userAnswer.focus();
			return;
		}
		f.userAnswer.value=str;
		
		//성별을 입력 안할 때
		str=f.userGender.value;
		str=str.trim();
		if(!str){
			alert("성별을 입력하세요!  ex) 남자, 여자");
			f.userGender.focus();
			return;
		}
		f.userGender.value=str;

		
		//우편번호를 입력 안할 때
		str=f.zipcode.value;
		str=str.trim();
		if(!str){
			alert("우편번호를 입력하세요 (아래 주소찾기 버튼을 누르세요)");
			f.zipcode.focus();
			return;
		}
		f.zipcode.value=str;
		
		//주소를 입력 안할 때
		str=f.address1.value;
		str=str.trim();
		if(!str){
			alert("주소를 입력하세요 (위에 주소찾기 버튼을 누르세요)");
			f.address1.focus();
			return;
		}
		f.address1.value=str;
		
		//상세주소를 입력 안할 때
		str=f.address2.value;
		str=str.trim();
		if(!str){
			alert("상세주소를 입력하세요");
			f.address2.focus();
			return;
		}
		f.address2.value=str;
		
		
		//이금찬이 작성
		
		
		//실행 됐을때 서블릿 메소드에  created_ok.do 부분 실행
		f.action="/join/created_ok.do";
		f.submit();
		
	}
</script>

</head>
<body>
<!-- 헤어 가져오는거 -->  
  <div style="position: relative;">
     <div id="contents">
       <div class="member-contents">
         <div class="container-login">
           <div class="member-top-title">
             <h3>회원가입</h3>
             <span class="line"></span>
           </div>
           <div class="login-box">
           
             <div class="login-form">   
				<form action="" method="post" name="myForm">
					
					<!-- 아이디 -->
					<div class="l-row l-input">
						<input type="text" id="userID" name="userId" placeholder="아이디" maxlength='10' required pattern='[\w!\-$]{3,15}'/>
					</div>
					
					<hr width = "100%" color="gray" >
					
					<!-- 비밀번호 -->
					<div class="l-row l-input">
						<input type="password" id="userPassword" name="userPwd" placeholder="비밀번호" required pattern='[a-zA-Z가-힣]{2,20}'/>
					</div>
									
					<hr width = "100%" color="gray" >
					
					<!-- 성명 -->
					<div class="l-row l-input">
						<input type="text" id="userName" name="userName" placeholder="성명"/>
					</div>
					
					<hr width = "100%" color="gray" >
					
					<!-- 생년월일  -->
					<div class="l-row l-input">
						<input type="date" id="userDate" name="userBirth" pattern="\d{1,2}/\d{1,2}/\d{4}" min="1920-01-01" max="2020-12-31" value="1996-01-01"/>
					</div>
					
					<hr width = "100%" color="gray" >
					
					<!-- 전화  -->
					<div class="l-row l-input">
						<input type="text" name="userTel" placeholder="전화번호  ex)01000000000 ('-'작성x)" pattern="(010)-\d{3,4}-\d{4}"/>
					</div>
					
					<hr width = "100%" color="gray" >
					
					
					<!-- 질문답변 입력  -->
					<div class="l-row l-input">
						<input type="text" id="userAnswer" name="userAnswer" placeholder="내가 다닌 초등학교는? ex)00초등학교"/>
                    </div>
                   
                    <hr width = "100%" color="gray" >
                   
                   
                    <!-- 성별 -->
				    <div class="l-row l-input">
				   		<input type="text" id="userGender" name="userGender" placeholder="성별을 입력하세요  ex) 남자"/>
                    </div>
					
					<hr width = "100%" color="gray" >
					
					<div class="l-row l-input">
					
					
					
	                <input type="text" id="zipcode" name="zipcode" placeholder="우편번호 (주소찾기 버튼을 눌러주세요)" readonly><br/><br/>
	                <input type="button" onclick="DaumPostcode()" value="주소찾기"><br/><br/>
					<input type="text" id="address1" name="address1" placeholder="주소"><br/><br/>
					<input type="text" id="address2" name="address2" placeholder="상세주소"><br/><br/>
					
               		</div>
               		

					<!-- 버튼 -->
					<input class="join-button" type="button" value="가입하기" class="btn2" 
						onclick="sendIt()"/>
					
					<hr width = "100%" color="gray" >
					
					<input type="reset" value="다시입력" class="btn3" 
						onclick="document.myForm.userId.focus();"/>
						
					<input type="button" value="작성취소" class="btn3"	 
						onclick="javascript:location.href='/main.jsp';"/>
						
				
				
	           	<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 110px;position:relative"> 
            		<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼"> 
            	</div>
            	
				<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js">	</script> 
				
				<script> 
				// 우편번호 찾기 화면을 넣을 element 
				var element_wrap = document.getElementById('wrap');
				function foldDaumPostcode() { 
					// iframe을 넣은 element를 안보이게 한다. 
					element_wrap.style.display = 'none'; 
					}
				
				function DaumPostcode(){
					// 현재 scroll 위치를 저장해 놓는다.
					var currentscroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
					new daum.Postcode({
						oncomplete : function(data){
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('') 값을 가지므로, 이를 참고하여 분기 한다.
							
							var fullAddr = data.address; // 최종 주소 변수
							var extraAddr = ''; // 조합형 주소 변수
							
							// 기본 주소가 도로명 타입일때 조합한다.
							if(data.addressType == 'R'){
								//법정동명이 있을 경우 추가한다.
								if(data.bname != ''){
									extraAddr += data.bname;
								}
								//건물명이 있을 경우 추가한다.
								if(data.buildingName !== ''){
									extraAddr+= (extraAddr !== '' ? ',' + data.buildingName : data.buildingName);
								}
								//조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !=='' ? '('+ extraAddr +')' : '');
							}
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('zipcode').value = data.zonecode; // 5자리 새우편번호 사용.
							document.getElementById('address1').value = fullAddr;
							
							// iframe 을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_wrap.style.display = 'none';
							
							// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
							document.body.scrollTop = currentScroll;
							
							$('#address2').focus();
						},
						// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분.
						// iframe을 넣은 element의 높이값을 조정한다.
						onresize : function(size){
							element_wrap.style.height = size.height+'px';
						},
						width : '100%',
						height : '100%'
					}).embed(element_wrap);
					
					//iframe 을 넣은 elemet를 보이게 한다.
					element_wrap.style.display = 'block';
					
				}
				</script>
			</form>
		 </div>	
        </div>
     </div>
  </div>        
</div>         
</div>
</body>
</html>


































