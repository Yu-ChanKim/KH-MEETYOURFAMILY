<%@ page import="java.util.Date"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
    <title>notice_DETAIL</title>
    <link rel="stylesheet" href="/css/dog_MYF/noticeDetail.css">
    <link rel="stylesheet" href="/css/main.css" type="text/css">
    <script src="/lib/jquery-3.5.1.min.js"></script>
    <script src="/js/dog_MYF/meetyourfamily.js"></script>
</head>

<body>

	<%@include file="/header.jsp"%>

    <div id="myf_detail">
        
        <div class="title">
            공지사항
        </div>

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
						<fmt:formatDate pattern="yyyy년 MM월 dd일 hh시 mm분" value="${n.regdate}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="1" class="box1">첨부파일</td>
                    <td colspan="1" class="box2 contcontent_ent">
                        <c:forTokens var="fileName" items="${n.files}" delims="," varStatus="st">
                        	<a href="${fileName}">${fileName}</a>
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
<%-- ????? --%>
            <input type="button" onClick="goPage(${(user == 'admin') ? 'nListA' : 'nList'})" value="목록">
<%-- ADMIN --%>
            <c:if test="${user == 'admin'}">
				<input type="button" value="수정">
				<input type="submit" onClick="deleting('${n.id}')" name="deleteBtn" value="삭제">
			</c:if>
<%-----------%>
        </div>

    </div>

	<%@include file="/footer.jsp"%>

</body>

</html>