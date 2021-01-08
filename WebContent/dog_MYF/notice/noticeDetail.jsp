<%@ page import="java.util.Date"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
    <title>notice_DETAIL</title>
    <link rel="stylesheet" href="/css/dog_MYF/noticeDetail.css">
    <link rel="stylesheet" href="/css/main.css" type="text/css">
</head>

<body>

	<%@include file="/header.jsp"%>

    <div id="myf_detail">
        
        <div class="title">
            공지사항
        </div>

		<br>현재 접속자(test) : ${currentUser}
		
        <div class="detail">
            <table>
				<tr>
                	<td colspan="1" class="box1">제목</td>
                    <td colspan="3" class="box2">
                    	${n.title}
                    </td>
				</tr>
                <tr>
                    <td colspan="1" class="box1">작성자</td>
                    <td colspan="1" class="box2">
                        ${n.writer}
                	</td>
                    <td colspan="1" class="box1">작성일</td>
                    <td colspan="1" class="box2">
						<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${n.regdate}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="1" class="box1">첨부파일</td>
                    <td colspan="1" class="box2 contcontent_ent">
                        <c:forTokens var="fileName" items="${n.files}" delims="/" varStatus="st">
                        	<a href="/dog_MYF/notice/upload/${fn:split(fileName,',')[0]}", download="${fn:split(fileName,',')[1]}">
								${fn:split(fileName,',')[1]}
                        	</a>
                        	<c:if test="${!st.last}">
                        		/ 
                        	</c:if>
                        </c:forTokens>
                    </td>
                    <td colspan="1" class="box1">조회수</td>
                    <td colspan="1" class="box2">
                    	<fmt:formatNumber value="${n.hit}" />
                    </td>
                </tr>
				<tr>
					<td colspan="4" class="box2 content_">
						${n.content}
					</td>
				</tr>
				<tr>
					<td colspan="1" class="box1">이전글</td>
					<td colspan="3" class="box2">이전글</td>
				</tr>
				<tr>
					<td colspan="1" class="box1">다음글</td>
					<td colspan="3" class="box2">다음글</td>
				</tr>				                
            </table>
            
        </div>

        <div class="btns">
            <button onClick="location.href='/dog_MYF/noticeList'">목록</button>
<%-- ADMIN --%>
            <c:if test="${currentUser == 'admin'}">
				<button type="submit">수정</button>
				<button type="submit" form="deleteId" name="deleteId" value="${n.id}">삭제</button>
			</c:if>
<%-----------%>
        </div>
        
    </div>
    
	<form id="deleteId" action="/dog_MYF/noticeList" method="post"></form>
		
	<%@include file="/footer.jsp"%>

</body>

</html>