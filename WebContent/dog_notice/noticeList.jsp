<%@page import="notice.entity.Notice"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>notice_LIST</title>
	<link rel="stylesheet" href="./css/notice/noticeList.css">
	
	<link rel="stylesheet" href="./css/main.css" type="text/css">
</head>

<body>

<%@include file="../header.jsp"%>
<%--
    <div id="header">
		여긴 헤더야, 헤더.
    </div>
--%>


	<div id="noticeList">

		<div class="noticeList_title">
			공지사항
		</div>

		<div class="noticeList_table">

			<table>

				<thead>
					<tr>
						<th class="noticeList_list_table-title-1">번호</th>
						<th class="noticeList_list_table-title-2">제목</th>
						<th class="noticeList_list_table-title-3">작성자</th>
						<th class="noticeList_list_table-title-4">작성일</th>
						<th class="noticeList_list_table-title-5">조회수</th>
					</tr>
				</thead>

				<tbody>
					
					<%--
					<% 
					List<notice> list = (List<notice>)request.getAttribute("list");
					for(notice p : list)
					{
						pageContext.setAttribute("n", n);
					--%>
					
					<c:forEach var="n" items="${list}">
						<tr>
							<td>
								<fmt:formatNumber value="${n.id}" />
							</td>
							<td class="text-align-left">
								<a href="main.jsp?inc=./dog_notice/noticeDetail?id=${n.id}">${n.title}</a>
							</td>
							<td>
								${n.writer}
							</td>
							<td>
								<%-- 
								<fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${n.regdate}"/>
								--%>
								${n.regdate}
							</td>
							<td>
								<fmt:formatNumber value="${n.hit}" />
							</td>
						</tr>
					</c:forEach>
					<%--
					<%} %>
					--%>
					
				</tbody>

			</table>

		</div>
		

		<div class="noticeList_bottom">

			<input type="button" class="noticeList_write" onClick="location.href=''" value="글쓰기">
			
			<form class="noticeList_search">
				<select class="search_category" name="category">
					<option ${(param.category=="title")?"selected":""} value="title">제목</option>
					<option ${(param.category=="writer")?"selected":""} value="writer">작성자</option>
				</select>
				<input class="search_text" type="text" name="keyword" value="${param.keyword}" autocomplete="off" placeholder="검색어 입력" />
				<input class="search_submit" type="submit" value="검색" />
			</form>

		</div>
		

		<div class="noticeList_paging">
 
			<table>
				<tr>
					<c:set var="pages" value="10" />
					<c:set var="pNo" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
					<c:set var="startPage" value="${pNo-((pNo-1) mod pages)}" />
					<c:set var="lastPage" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
				<!-- 	
					<fmt:parseNumber var="pages" type="number" value="10" />
					<fmt:parseNumber var="pNo" type="number" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
					<fmt:parseNumber var="startPage" type="number" value="${pNo-((pNo-1) mod pages)}" />
					<fmt:parseNumber var="lastPage" type="number" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
 				-->
					<c:if test="${pNo gt pages}">
						<td><input type="button" class="paging-parenthesis prev" value="◀"
								onClick="location.href='?pageNo=${startPage-pages}&category=${param.category}&keyword=${param.keyword}'" ></td>
					</c:if>
			
					<c:forEach var="i" begin="${startPage}" end="${(startPage+pages-1 lt lastPage)? startPage+pages-1 : lastPage}">
						<td><input type="button" class="pageNo" value="${i}" name="${(pNo eq i)?'currentPage':''}"
								onClick="location.href='?pageNo=${i}&category=${param.category}&keyword=${param.keyword}'"></td>
					</c:forEach>

					<c:if test="${startPage+pages lt lastPage}">
						<td><input type="button" class="paging-parenthesis next" value="▶"
								onClick="location.href='?pageNo=${startPage+pages}&category=${param.category}&keyword=${param.keyword}'"></td>
					</c:if>
				</tr>

			</table>

		<!--
			<c:set var="pages" value="10" />
			<c:set var="pNo" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
			<c:set var="startPage" value="${pNo-(pNo%pages) + 1}" />
			<c:set var="lastPage" value="23" />

			<c:if test="${pNo > pages}">
				<a class="paging-parenthesis prev" href="?pageNo=${startPage-pages}">◀</a>
			</c:if>
			
			<c:forEach var="i" begin="${startPage}" end="${(startPage+pages-1 < lastPage)? startPage+pages-1 : lastPage}">
				<a class="pageNo" href="?pageNo=${i}">${i}</a>
			</c:forEach>

			<c:if test="${startPage+pages < lastPage}">
				<a class="paging-parenthesis next" href="?pageNo=${startPage+pages}">▶</a>
			</c:if>
		-->
				
		</div>
		

	</div>

	
<%--
    <div id="footer">
		여긴 푸터다, 푸터.
	</div>
--%>
<%@include file="../footer.jsp"%>

</body>

</html>
