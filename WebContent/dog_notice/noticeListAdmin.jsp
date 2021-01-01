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
	<link rel="stylesheet" href="/css/notice/noticeList.css">
	<link rel="stylesheet" href="/css/main.css" type="text/css">
</head>

<body>

<%@include file="/header.jsp"%>

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
		
			<form id="frm" action="" method="post">
							
				<table>
					<thead>
						<tr>
							<th class="title-1"><p class="border_right">번호</p></th>
							<th class="title-2"><p class="border_right">제목</p></th>
							<th class="title-3"><p class="border_right">작성자</p></th>
							<th class="title-4"><p class="border_right">작성일</p></th>
							<th class="title-5"><p class="border_right">조회수</p></th>
							<th class="title-6"><p class="border_right">공개</p></th>
							<th class="title-7"><p>삭제</p></th>
						</tr>
					</thead>
						<tbody>
							<c:forEach var="n" items="${list}">
								<tr>
									<td>
										<fmt:formatNumber value="${n.id}" />
									</td>
									<td class="text-align-left">
										<a href="/dog_notice/noticeDetailAdmin?id=${n.id}">${n.title}</a>
										&nbsp;${(n.commentCount) != 0 ? [n.commentCount] : ""}
									</td>
									<td>
										${n.writer}
									</td>
									<td>
										${n.regdate}
									</td>
									<td>
										<fmt:formatNumber value="${n.hit}" />
									</td>
									<td>
										<input type="checkbox" name="openId" value="${n.id}">
									</td>
									<td>
										<input type="checkbox" name="deleteId" value="${n.id}">
									</td>
								</tr>
							</c:forEach>			
						</tbody>
				</table>
				
			</form>
			
		</div>

		<div class="noticeList_bottom">
			<input type="submit" class="noticeList_bottom_button" name="openBtn" form="frm" value="공개하기">
			<input type="submit" class="noticeList_bottom_button" name="deleteBtn" form="frm" value="삭제하기">
			<input type="button" class="noticeList_bottom_button" onClick="location.href=''" value="글쓰기">
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
				<%--
					<c:set var="pages" value="10" />
					<c:set var="pNo" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
					<c:set var="startPage" value="${pNo-((pNo-1) mod pages)}" />
					<c:set var="lastPage" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
				--%> 	
					<fmt:parseNumber var="pages" type="number" value="10" />
					<fmt:parseNumber var="pNo" type="number" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
					<fmt:parseNumber var="startPage" type="number" value="${pNo-((pNo-1) mod pages)}" />
					<fmt:parseNumber var="lastPage" type="number" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
					<c:if test="${pNo gt pages}">
						<td><input type="button" class="paging-parenthesis prev" value="◀"
							onClick="location.href='/dog_notice/noticeListAdmin?pageNo=${startPage-pages}&category=${param.category}&keyword=${param.keyword}'" >
						</td>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${(startPage+pages-1 lt lastPage)? startPage+pages-1 : lastPage}">
						<td><input type="button" class="pageNo" value="${i}" name="${(pNo eq i)?'currentPage':''}"
							onClick="location.href='/dog_notice/noticeListAdmin?pageNo=${i}&category=${param.category}&keyword=${param.keyword}'">
						</td>
					</c:forEach>

					<c:if test="${startPage+pages lt lastPage}">
						<td><input type="button" class="paging-parenthesis next" value="▶"
							onClick="location.href='/dog_notice/noticeListAdmin?pageNo=${startPage+pages}&category=${param.category}&keyword=${param.keyword}'">
						</td>
					</c:if>
				</tr>
			</table>
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
