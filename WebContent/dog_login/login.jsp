<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">    
    <title>로그인</title>
    <link rel="stylesheet" href="./css/login.css" type="text/css">
</head>
<body> 
<div class="container">       
<div style="position: relative;">
  <div id="contents">
    <div class="member-contents">
      <div class="container-login">
        <div class="member-top-title">
          <h3>로그인</h3>
          <span class="line"></span>
        </div>
        <div class="login-box">
          <div class="login-form">
            <form action="/session" id="login-form" method="post">
              <!-- <input name="_csrf_token" type="hidden" value="d">             -->
                <div class="l-row l-input">
                  <input data-cy="email" id="user_userid" name="user[userid]" placeholder="사용자 아이디" type="text">            
                </div>
                <div class="l-row l-input">
                  <input data-cy="password" id="user_password" name="user[password]" placeholder="사용자 비밀번호" type="password">
                </div>
                  <button class="button button-80 button-round button-point-border" type="submit" name="button" data-cy="submit">
                    <span class="title-small8 color-peach b">로그인</span>
                  </button>

                <div class="l-row l-input">
                  <a class="button button-80 button-round button-mouse-border" href="main.jsp?inc=./dog_login/user_register.jsp">
                    <span class="font-ns title-small8 color-mouse b">회원가입</span>
                  </a>
                  
                </div>
              
            </form>
          </div>
        <span class="line"></span>
        <div class="find">
          <a class="button id-find" href="main.jsp?inc=./dog_login/id-find.jsp">
            <span>아이디 찾기</span>
          </a>
          <a class="button pw-find" href="main.jsp?inc=./dog_login/password-find.jsp">
            <span>비밀번호 찾기</span>
          </a>
        </div>
        <div class="login-bottom">
          <p class="font-nsr title-xsmall6 color-grey9">
            가입시 동의하신 <a class="color-peach b" href="">이용약관</a>과 <a class="color-peach b" href="">개인정보처리방침</a>에 따라 관리됩니다.
          </p>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>