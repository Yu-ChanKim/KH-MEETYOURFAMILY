<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <header id='header'>
            <a href="/main.jsp"><h2>Meet Your Family</h2></a>
            <nav>             
                <ul>                    
                    <li><a href="/main.jsp?inc=/dog_introduce/introduce.jsp">사업소개</a></li>
                    <li><a href="garden.do?siba=page&dname=&group=전체">마당</a></li>
                    <li><a href="/main.jsp?inc=/dog_test/testMain.jsp">who's my family</a></li>
                    
                    <li><a href="/dog_MYF/login">meet your family</a></li>
                    
                    <li><a href="/main.jsp?inc=./member/updated.jsp">마이페이지</a></li>
                    <li><a href="dog_garden?admin=select">강아지 관리자 페이지</a></li>
                </ul>
            </nav>
            <div>

			<c:choose>
		      	<c:when test="${empty sessionScope.customInfo.userId}">
		      		<button onclick="javascript:location.href='main.jsp?inc=./member/created.jsp';">회원가입</button>
		      	    <button onclick="javascript:location.href='main.jsp?inc=./member/login.jsp';">로그인</button>
		      	</c:when>
		      	<c:otherwise>
		      		<button onclick="javascript:location.href='main.jsp?inc=./member/updated.jsp';">정보수정</button>
		      		<button onclick="javascript:location.href='main.jsp?inc=./member/logout.jsp';">로그아웃</button>
		      	</c:otherwise>               
	      	</c:choose>

            </div>
 </header>