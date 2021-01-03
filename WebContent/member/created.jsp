<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="<%=cp %>/member/data/join.css" type="text/css"/>

<script src="<%=cp %>/member/data/util.js"></script>
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
		
		//전화번호를 입력 안할 때
		str=f.userAnswer.value;
		str=str.trim();
		if(!str){
			alert("전화번호를 입력하세요!");
			f.userAnswer.focus();
			return;
		}
		f.userAnswer.value=str;
		
		//전화번호를 입력 안할 때
		str=f.userGender.value;
		str=str.trim();
		if(!str){
			alert("전화번호를 입력하세요!");
			f.userGender.focus();
			return;
		}
		f.userGender.value=str;
		
		//실행 됐을때 서블릿 메소드에  created_ok.do 부분 실행
		f.action="<%=cp%>/join/created_ok.do";
		f.submit();
		
	}
</script>

</head>
<body>
<div class="container">      
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
						<input type="text" id="userID" name="userId" placeholder="아이디"/>
					</div>
					
					<hr width = "100%" color="gray" >
					
					<!-- 비밀번호 -->
					<div class="l-row l-input">
						<input type="password" id="userPassword" name="userPwd" placeholder="비밀번호"/>
					</div>
									
					<hr width = "100%" color="gray" >
					
					<!-- 성명 -->
					<div class="l-row l-input">
						<input type="text" id="userName" name="userName" placeholder="성명"/>
					</div>
					
					<hr width = "100%" color="gray" >
					
					<!-- 생년월일  -->
					<div class="l-row l-input">
						<input type="date" id="userDate" name="userBirth"/>
					</div>
					
					<hr width = "100%" color="gray" >
					
					<!-- 전화  -->
					<div class="l-row l-input">
						<input type="text" name="userTel" placeholder="전화번호"/>
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

					
					<!-- 버튼 -->
					<input class="join-button" type="button" value="가입하기" class="btn2" 
						onclick="sendIt()"/>
					
					<hr width = "100%" color="gray" >
					
					<input type="reset" value="다시입력" class="btn2" 
						onclick="document.myForm.userId.focus();"/>
						
					<input type="button" value="작성취소" class="btn2"	 
						onclick="javascript:location.href='<%=cp%>/main.jsp';"/>
				</form>
			</div>

				
             </div>
          </div>
       </div>        
     </div>         
   </div>
 </div>
 </div>
</div>
</body>
</html>


































