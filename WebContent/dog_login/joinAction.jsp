<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>

<%@ page import= "user.UserDAO" %>   <!--  -->
<%@ page import= "java.io.PrintWriter" %><!-- 자바스크립트문장을 사용하기 위한것  -->
<%@ request.setCharacterEncoding("UTF-8"); %><!-- 건너오는 모든 데이터를 UTF-8 로 받는다. -->
<jsp:useBean id="user" class="user.User" scope="page" />   <!--유저라는 클래스를 자바 빈즈로 사용. 현재페이지안에서만 빈즈가 사용될수 있게한다.   -->

<jsp:setProperty name="user" property="userID"/>
<jsp:setproperty name="user" property="userPassword" />
<jsp:setproperty name="user" property="userGender" />
<jsp:setproperty name="user" property="userName" />
<jsp:setproperty name="user" property="userDate" />
<jsp:setproperty name="user" property="UserChoice" />
<jsp:setproperty name="user" property="UserAnswer" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">    
    <title>로그인실행페이지</title>
   
</head>
<body> 
<%   /*정보를 입력하지 않을경우 진행이 안됨  */
         if(user.getUserID() == null || user.getUserPassword() == null || user.getUserGender() == null ||
            user.getUserName() == null || user.getUserDate() == null ||
            user.getUserChoice() == null || user.getUserAnswer() == null){
          PrintWriter script = response.getWriter();   //건너온 데이터를 받아주는거.
         script.println("<script>");
         script.println("alert('모든 항목을 입력해주세요.')");
         script.println("history.back()");   // 체크되지 않은 항목이 있을경우 돌아감.
         script.println("<script>");
         }else{
           
            UserDAO userDao = new UserDAO();
               int result = userDao.join(user); /* 존재하는 아이디라면 데이터베이스에 저장하지 않고 전페이지로 넘어감 */
               if(result == -1){
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('이미 존재하는 아이디입니다.')");
                script.println("history.back()");  
                script.println("<script>");
               }
               else if(result == 0){   // 회원가입이되었을때 메인페이지로 넘어감.
                  PrintWriter script = response.getWriter();
                  script.println("<script>");
                  script.println("location.href = 'main.jsp?inc=./dog_login/login.jsp'");
                  script.println("<script>");
               }
               
         }
     
   %>
  

</body>
</html>

