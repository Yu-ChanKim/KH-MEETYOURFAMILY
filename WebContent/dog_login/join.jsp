<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">    
    <title>회원가입</title>
    <link rel="stylesheet" href="./css/join.css" type="text/css">
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
             
             
               <form action="./dog_login/joinAction.jsp" id="join-form" method="post">
               
                 <input name="_csrf_token" type="hidden" value="">            
                  <!-- 아이디 -->
                   <div class="l-row l-input">   
                     <input id="userID" name="userID" placeholder="아이디" type="text">            
                   </div>
                   
                   <hr width = "100%" color="gray" >
                   
                   <!-- 비밀번호 -->
                   <div class="l-row l-input">
                     <input data-cy="password" id="userPassword" name="userPassword" placeholder="비밀번호" type="password"   >
                   </div>
                   
                   <hr width = "100%" color="gray" >
                   
                   <!-- 비밀번호확인 -->
                   <div class="l-row l-input">
                     <input data-cy="password" id="userPassword2" name="userPassword2" placeholder="비밀번호확인" type="password" >
                   </div>
                   
                   <hr width = "100%" color="gray" >
                   
                   <!-- 이름입력 -->
                   <div class="l-row l-input">
                     <input data-cy="user_username" id="userName" name="userName" placeholder="이름입력" type="text">
                   </div>
                   
                   <hr width = "100%" color="gray" >
                   
                   <!--  생년월일 -->
                    <div class="l-row l-input">
                    <input type="date" id=userDate name="userDate" placeholder="ex)1993-10-10" value="생년월일">
                    </div>
                    
                    <hr width = "100%" color="gray" >
                    
                    <!-- 질문선택 -->
                    <div class="l-row l-input">
                        <table id="user_question" name="user_questionn" value="">
                         <tr>
                         <select id="question" class="sel">
                        <option value>질문을 선택하세요!</option>
                         <option value="01">나의 첫사랑 이름은?</option>
                        <option value="02">내가 가장 좋아하는 영화제목은?</option>
                        <option value="03">나의 가장 특별한 취미는?</option>
	                     </select>
	                     </tr>
                     </table>  
                     
                   </div>
                   
                   <hr width = "100%" color="gray">
                   
                   <!-- 질문답변 -->
                   <div class="l-row l-input">
                   <input type="text" id="question_answer" name="question_answer" placeholder="질문 답변 입력" value>
                   </div>
                   
                   <hr width = "100%" color="gray" >
                    
                    <!-- 성별 -->
              <!--      <div class="joinGender"> 
                    <input type="radio" name="userGender" value="M" title="성별"> 남자 
                    <input type="radio" name="userGender" value="F" title="성별"> 여자
				</div>   -->
				
				
				<!-- 성별 -->
				   <div class="l-row l-input">
                    <select id="gender" class="sel">
                      <option value>성별을 선택하세요!</option>
                      <option value="남자">남자</option>
                      <option value="여자">여자</option> 
                  	</select>
                   </div>


             
                   <hr width = "100%" color="gray" >
                   
                     <div id="agreementDivArea" class="agreement">
					    <div>
					        <input type="checkbox" class="n-check" id="checkAll">
					        <label for="checkAll" class="all">약관 전체동의</label>
					    </div>
					    <div>
					        <input type="checkbox">
					        <label>회원 가입 약관동의 '</label>
					        <a type="button"  href="main.jsp?inc=./dog_login/joinAgree.jsp">약관보기'</a>
					    </div>
					
					    <div>
					        <input type="checkbox" >
					        <label> 개인정보 수집 및 이용동의  '</label>
					        <a type="button"  href="main.jsp?inc=./dog_login/privacyAgree.jsp">약관보기'</a>
					    </div>
					   </div>
					                   
                    <input class="join-button" type="submit" value="회원가입" onclick="alert('회원가입이 완료되었습니다.')">
                   

               </form>
             </div>            
          </div>
       </div>        
     </div>         
   </div>
 </div>
 </div>
</body>
</html>