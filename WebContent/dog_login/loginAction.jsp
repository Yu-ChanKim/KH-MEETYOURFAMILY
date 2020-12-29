<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ page import= "user.UserDao" %>   <!--  -->
<%@ page import= "java.io.PrintWriter" %><!-- 자바스크립트문장을 사용하기 위한것  -->
<%@ request.setCharacterEncoding("UTF-8"); %><!-- 건너오는 모든 데이터를 UTF-8 로 받는다. -->
<jsp:useBean id="user" class="user.User" scope="page" />   <!--유저라는 클래스를 자바 빈즈로 사용. 현재페이지안에서만 빈즈가 사용될수 있게한다.   -->
<jsp:setProperty name="user" property="userID"/>
<jsp:setproperty name="user" property="userPassword" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">    
    <title>로그인실행페이지</title>
   
</head>
<body> 
   <%
      UserDao userDao = new UserDao();
      int result = userDao.login(user.getUserID(), user.getUserPassword()); /* 로그인페이지에서 입력된값이 이곳으로 넘어와 로그인 함수에서 실행 */
         if(result == 1){
            PrintWriter script = response.getWriter();
            script.println("<location.href = 'main.jsp'>");   // 로그인이 성공하였을때 메인페이지로 넘어감.
            script.println("</script>");
         }
         else if(result == 0){   // 비밀번호가 틀릴때
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println("history.back()");   // 다시 로그인페이지로 돌려보내기
            script.println("<script>");
         }
         else if(result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('아이디가 존재하지 않습니다.')");
            script.println("history.back()");
            script.println("<script>");
         }
         else if(result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('데이터베이스 오류가 발생하였습니다.')");
            script.println("history.back()");
            script.println("<script>");
         }
   
   %>
</body>
</html>


