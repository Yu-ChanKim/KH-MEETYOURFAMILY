<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>notice_DETAIL</title>
    <link rel="stylesheet" href="/css/notice/noticeDetail.css">
    <link rel="stylesheet" href="/css/main.css" type="text/css">
    <script src="/lib/jquery-3.5.1.min.js"></script>
    <script src="/js/notice/noticeList.js"></script>
</head>

<body>

<%@include file="/header.jsp"%>

<%--
    <div id="header">
		여긴 헤더야, 헤더.
    </div>
--%>

    <div id="noticeDetail">
        
        <div class="noticeDetail_title">
            공지사항
        </div>

        <div class="noticeDetail_table">
            <table>
				<tr>
                	<td colspan="1" class="bg_color_1">제목</td>
                    <td colspan="3" class="bg_color_2">
                    	${n.title}
                    </td>
				</tr>
                <tr>
                    <td colspan="1" class="bg_color_1">작성자</td>
                    <td colspan="1" class="bg_color_2">
                        ${n.writer}
                	</td>
                    <td colspan="1" class="bg_color_1">작성일</td>
                    <td colspan="1" class="bg_color_2">
						<fmt:formatDate pattern="yyyy년 MM월 dd일 hh시 mm분" value="${n.regdate}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="1" class="bg_color_1">첨부파일</td>
                    <td colspan="1" class="bg_color_2">
                        <c:forTokens var="fileName" items="${n.files}" delims="," varStatus="st">
                        	<a href="${fileName}">${fileName}</a>
                        	<c:if test="${!st.last}">
                        		/ 
                        	</c:if>
                        </c:forTokens>
                    </td>
                    <td colspan="1" class="bg_color_1">조회수</td>
                    <td colspan="1" class="bg_color_2">
                    	<fmt:formatNumber value="${n.hit}" />
                    </td>
                </tr>
				<tr>
					<td colspan="4" class="box_content">
						${n.content}
					</td>
				</tr>
				<tr>
					<td colspan="1" class="bg_color_1">이전글</td>
					<td colspan="3" class="bg_color_2">이전글</td>
				</tr>
				<tr>
					<td colspan="1" class="bg_color_1">다음글</td>
					<td colspan="3" class="bg_color_2">다음글</td>
				</tr>				                
            </table>
            
        </div>

        <div class="noticeDetail_btns">
            <input type="button" class="noticeDetail_btns_list" onClick="goPage(nListA)" value="목록">
            <c:if test="${user == 'admin'}">
				<input type="button" class="noticeDetail_btns_edit" value="수정">
				<input type="submit" class="noticeDetail_btns_delete" onClick="deleting('${n.id}')" name="deleteBtn" value="삭제">
			</c:if>
        </div>

    </div>
    
<%--
    <div id="footer">
		여긴 푸터다, 푸터.
	</div>
--%>

<%@include file="/footer.jsp"%>

</body>

</html>