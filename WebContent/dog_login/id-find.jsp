<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">    
    <title>MEET YOUR FAMILY</title>
    <link rel="stylesheet" href="./css/join.css" type="text/css">
</head>
<body> 
 <div style="position: relative;">
      <div id="contents">
        <div class="member-contents">
          <div class="container-login">
            <div class="member-top-title">
              <h3>아이디 찾기</h3>
              <span class="line"></span>
            </div>
           
            <div class="find">
              <a class="button id-find" href="main.jsp?inc=./dog_login/id-find.jsp">
                <span>아이디 찾기</span>
              </a>
              <a class="button pw-find" href="main.jsp?inc=./dog_login/password-find.jsp">
                <span>비밀번호 찾기</span>
              </a>
            </div>
            
            <hr width = "65%" color="gray" size="1">
            
            <div class="login-box">
          
              <div class="login-form">
                <form action="/session" id="login-form" method="post">
                  
                   
                    
                    <div class="l-row l-input">
                      <input data-cy="email" id="user_name" name="user[username]" placeholder="이름을 입력하세요." type="text">            
                    </div>
               
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
                    
                    <!-- 질문답변 -->
                    <div class="l-row l-input">
                    <input type="text" id="question_answer" name="question_answer" placeholder="질문 답변 입력" value="">
                    </div>                    
        
		            
		             <input class="join-button" type="submit" value="아이디 찾기" onclick="alert('회원가입이 완료되었습니다.')">
                  
                </form>
              </div>
              <br/>
            <span class="line"></span>
             
          </div>
        </div>
      </div>
    </div>
            
</body>
</html>