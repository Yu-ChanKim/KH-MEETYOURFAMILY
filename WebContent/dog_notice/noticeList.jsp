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
	<script src="/lib/jquery-3.5.1.min.js"></script>
	<script src="/js/notice/noticeList.js"></script>
</head>

<body>

	<%@include file="/header.jsp"%>
	
	<div id="noticeList">
		    
		<div class="noticeList_title">
			공지사항
		</div>
	
		<div class="noticeList_table">
			<table>
				<thead>
					<tr>
						<th class="title-1"><p class="border_right">번호</p></th>
						<th class="title-2"><p class="border_right">제목</p></th>
						<th class="title-3"><p class="border_right">작성자</p></th>
						<th class="title-4"><p class="border_right">작성일</p></th>
						<th class="title-5"><p>조회수</p></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="n" items="${list}">
						<tr>
							<td>
								<fmt:formatNumber value="${n.id}" />
							</td>
							<td class="text-align-left">
								<p class="list_pointer" onClick="goDetailPage(nDetail, ${n.id})">
									${n.title}&nbsp;${(n.commentCount) != 0 ? [n.commentCount] : ""}
								</p>
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
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
		<div class="noticeList_bottom">
		
			<input type="button" class="noticeList_bottom_button" onClick="location.href=''" value="TEST">	
			
			<form name="search" class="noticeList_search" method="post">
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
					<fmt:parseNumber var="pages" type="number" value="10" />
					<fmt:parseNumber var="pNo" type="number" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
					<fmt:parseNumber var="startPage" type="number" value="${pNo-((pNo-1) mod pages)}" />
					<fmt:parseNumber var="lastPage" type="number" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
					
					<c:if test="${pNo gt pages}">
						<td><input type="button" class="paging-parenthesis prev" value="◀"
							onClick="paging(nList, '${startPage-pages}', '${param.category}', '${param.keyword}')" />
						</td>
					</c:if>
					
					<c:forEach var="i" begin="${startPage}" end="${(startPage+pages-1 lt lastPage)? startPage+pages-1 : lastPage}">
						<td><input type="button" class="pageNo" value="${i}" name="${(pNo eq i)?'currentPage':''}"
							onClick="paging(nList, '${i}', '${param.category}', '${param.keyword}')" />
						</td>
						
					</c:forEach>
						<c:if test="${startPage+pages lt lastPage}">
						<td><input type="button" class="paging-parenthesis next" value="▶"
							onClick="paging(nList, '${startPage+pages}', '${param.category}', '${param.keyword}')"	/>
						</td>
					</c:if>
					
				</tr>
			</table>
		</div>	
	</div>
	
	<%@include file="/footer.jsp"%>

</body>

</html>
