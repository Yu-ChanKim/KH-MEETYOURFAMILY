<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">    
    <title>MEET YOUR FAMILY</title>
    <link rel="stylesheet" href="./css/login.css" type="text/css">
</head>
<body> 
 <div style="position: relative;">
      <div id="contents">
        <div class="member-contents">
          <div class="container-login">
            <div class="member-top-title">
              <h3>아이디찾기/비밀번호 찾기</h3>
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
            <div class="login-box">
          
              <div class="login-form">
                <form action="/session" id="login-form" method="post">
                  <input name="_csrf_token" type="hidden" value="NhdiGxU4NCEiBHc_O3ZhYjAcHxkmXwRkuGR_oyFOeJ6iYO92cVU4O-K7">  
                            
                    <div class="l-row l-input">
                       <legend>아이디</legend>
                      <input data-cy="email" id="user_userid" name="user[userid]" placeholder="아이디를 입력하세요." type="text">            
                    </div>
                    <br/>
                    <div class="l-row l-input">
                    <legend>이름</legend>
                      <input data-cy="email" id="user_name" name="user[username]" placeholder="이름을 입력하세요." type="text">            
                    </div>
                <br/>
                   <div class="l-row l-input">
                     <legend>질문선택</legend>
                       <input type="text" id="user_question" name="user_questionn" placeholder="질문선택" value>
                         <table>
                         <tr>
                         <select id="question" class="sel">
                        <option value>질문선택</option>
                         <option value="01">너 이름 뭐?</option>
                        <option value="02">너 어디 삼?</option>
                        <option value="03">너 번호 뭐?</option>

                     </select>
                     </table>   
                    </div>
                    
                    <!-- 질문답변 -->
                    <div class="l-row l-input">
                    <legend>질문답변</legend>
                    <input type="text" id="question_answer" name="question_answer" placeholder="질문 답변 입력" value>
                    </div>
                  
                </form>
              </div>
              <br/>
            <span class="line"></span>
             <div class="find">
              <a class="button id-find" href="/id-find">
                <span>확인</span>
              </a>
              </div>
          </div>
        </div>
      </div>
    </div>
            
</body>
</html>