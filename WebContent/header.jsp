<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
 
<header id='header'>
   <div class="header_1">
       <a href="/main.jsp"><img src="/img/myflogo.png" width='70px' height='70px'><span>Meet Your Family</span></a>
    </div>
    <nav class="header_2">             
       <ul>                    
          <li><a href="/main.jsp?inc=/dog_introduce/introduce.jsp">사업소개</a></li>
            <li><a href="/garden.do?siba=page&dname=&group=전체">마당</a></li>
            <c:if test="${not empty sessionScope.customInfo.userId && sessionScope.customInfo.userId == 'admin'}">           
               <li><a href="/dog_garden?admin=select">마당 관리</a></li>                              
            </c:if>                 
            <li><a href="/main.jsp?inc=/dog_test/testMain.jsp">who's my family</a></li>
            <li><a href="/dog_MYF/postList">meet your family</a></li>
            <li><a href="/main.jsp?inc=./member/mypage.jsp">마이페이지</a></li>
       </ul>
    </nav>
    <div class="header_3">
      <c:choose>
           <c:when test="${empty sessionScope.customInfo.userId}">
               <a href="/main.jsp?inc=./member/agreePage.jsp">회원가입</a>
                <a href="/main.jsp?inc=./member/login.jsp">로그인</a>
            </c:when>
            <c:otherwise>
                <a href="/main.jsp?inc=./member/updated.jsp">정보수정</a>
                <a href="/main.jsp?inc=./member/logout.jsp">로그아웃</a>
            </c:otherwise>               
        </c:choose>
   </div>
</header>