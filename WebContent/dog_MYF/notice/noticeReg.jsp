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
       	    <form id="reg" action="/dog_notice/noticeReg/Admin" method="post">
	            <table>
					<tr>
	                	<td colspan="1" class="box1">제목</td>
	                    <td colspan="3" class="box2">
	                    	<input type="text" name="title" placeholder="제목을 입력해주라."/>
	                    </td>
					</tr>
	                <tr>
	                	<td colspan="1" class="box1">첨부파일</td>
	                	<td colspan="1" class="box2">
	                        <c:forTokens var="fileName" items="${n.files}" delims="," varStatus="st">
	                        	<a href="${fileName}">${fileName}</a>
	                        	<c:if test="${!st.last}">
	                        		/ 
	                        	</c:if>
	                        </c:forTokens>
	                    </td>
	                    <td colspan="1" class="box1">Admin</td>
	                    <td colspan="1" class="box2">
	                        관리자
	                	</td>
	                </tr>
					<tr>
						<td colspan="4" class="box2">
							<textarea name="content" placeholder="내용을 입력해주라."></textarea>
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
            </form>
        </div>      	
        
        <div class="btns">
            <input type="button" onClick="goPage(nListA)" value="목록">
            <input type="submit" form="reg" name="regBtn" value="등록">
        </div>

    </div>

	<%@include file="/footer.jsp"%>

</body>

</html>