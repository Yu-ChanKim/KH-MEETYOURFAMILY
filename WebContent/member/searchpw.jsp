<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>MYF : 비밀번호 찾기</title>
<link rel="stylesheet" href="/css/main.css" type="text/css">
<link rel="stylesheet" href="<%=cp %>/member/data/search.css" type="text/css"/>

<script src='./lib/jquery-3.5.1.min.js'></script>

<script type="text/javascript">
   function sendIt(){
      var f=document.myForm;
      
      if(!f.userId.value){
         alert("아이디를 입력하세요!");
         f.userId.focus;
         return;
      }
      
      if(!f.userAnswer.value){
         alert("질문을 입력하세요!");
         f.userAnswer.focus;
         return;
      }
      
      f.action="<%=cp%>/join/searchpw_ok.do";
      f.submit();
   }
</script>
</head>
<body>
<div class="container">
<!--------------------------------------------  상단 헤더 -------------------------------------------->
<%@include file="/header.jsp"%>
<!-------------------------------------------- 중간 섹션 -------------------------------------------->
 <div style="position: relative;">
      <div id="contents">
        <div class="member-contents">
          <div class="container-login">
            <div class="member-top-title">
              <h3>비밀번호 찾기</h3>
              <span class="line"></span>
            </div>
              
            <div class="login-box">
          
              <div class="login-form">
                <form action="" id="login-form" method="post" name="myForm">
                
                    <div class="l-row l-input">
                      <input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요." >            
                    </div>
                  
                    <!-- 질문답변 -->
                    <div class="l-row l-input">
                  <input type="text" id="userAnswer" name="userAnswer" placeholder="내가 다닌 초등학교는? ex)00초등학교"/>
                     </div>                    
        
                  
                   <input class="join-button" type="button" value="비밀번호찾기" onclick="sendIt();">
                 
                </form>
              </div>
              <br/>
            <span class="line"></span>
             
          </div>
        </div>
      </div>
    </div>
    </div>            
<!-------------------------------------------- 하단 푸터 -------------------------------------------->
<%@include file="/footer.jsp"%>
</div>    
</body>
</html>