<%@ page import="dog_MYF.notice.entity.Notice"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>notice_LIST</title>
    <link rel="stylesheet" href="/css/dog_MYF/noticeList.css">
	<link rel="stylesheet" href="/css/main.css" type="text/css">
	<script src="/lib/jquery-3.5.1.min.js"></script>
    <script src="/js/dog_MYF/meetyourfamily.js"></script>
</head>

<body>

	<%@include file="/header.jsp"%>
	
	<div id="myf_list">
	    
		<div class="title">
			공지사항
		</div>
	
		<div class="btns">
<%-- ADMIN --%>
			<c:if test="${user == 'admin'}">
				<input class="btn" type="button" onClick="goPage(nRegA)" value="글쓰기">
				<input class="btn" action="/dog_MYF/noticeList/Admin" type="submit" name="deleteBtn" form="frmCheck" value="삭제하기">
			</c:if>
<%-----------%>
			<form class="search" name="search"  method="post">
				<select class="category" name="category">
					<option ${(param.category == "title") ? "selected" : ""} value="title">제목</option>
					<option ${(param.category == "writer") ? "selected" : ""} value="writer">작성자</option>
				</select>
				<input class="textbox" type="text" name="keyword" value="${param.keyword}" autocomplete="off" placeholder="검색어 입력" />
				<input class="btn" type="submit" value="검색" />
			</form>
		</div>	

		<div class="list">
			<form id="frmCheck" method="post">
				<table>
					<thead>
						<tr>
							<th><p>번호</p></th>
							<th><p>제목</p></th>
							<th><p>작성자</p></th>
							<th><p>작성일</p></th>
							<th><p>조회수</p></th>
<%-- ADMIN --%>
							<c:if test="${user == 'admin'}">
								<th><p>공개</p></th>
								<th><p>삭제</p></th>
							</c:if>
<%-----------%>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="l" items="${list}">
							<tr>
								<td>
									<fmt:formatNumber value="${l.id}" />
								</td>
								<td class="title">
<%-- ADMIN --%>
									<p onClick="goDetailPage(${(user == 'admin') ? 'nDetailA' : 'nDetail'}, ${l.id})">
										${l.title}&nbsp;${(l.commentCount) != 0 ? [l.commentCount] : ""}
                                    </p>
<%-----------%>
								</td>
								<td>
									${l.writer}
								</td>
								<td>
									${l.regdate}
								</td>
								<td>
									<fmt:formatNumber value="${l.hit}" />
								</td>
<%-- ADMIN --%>
								<c:if test="${user == 'admin'}">
									<td>
										<input type="checkbox" name="openId" value="${l.id}">
									</td>
									<td>
										<input type="checkbox" name="deleteId" value="${l.id}">
									</td>
								</c:if>
<%-----------%>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
		
		<div class="paging">
			<table>
				<tr>
					<fmt:parseNumber var="pages" type="number" value="10" />
					<fmt:parseNumber var="pNo" type="number" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
					<fmt:parseNumber var="startPage" type="number" value="${pNo-((pNo-1) mod pages)}" />
					<fmt:parseNumber var="lastPage" type="number" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
					<c:if test="${pNo > pages}">
						<td><input class="turn" type="button" value="◀"
							onClick="paging(${(user == 'admin') ? 'nListA' : 'nList'}, '${startPage-pages}', '${param.category}', '${param.keyword}')" />
						</td>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${(startPage+pages-1 < lastPage)? startPage+pages-1 : lastPage}">
						<td><input class="pageNo" type="button" value="${i}" name="${(pNo == i)?'currentPage':''}"
							onClick="paging(${(user == 'admin') ? 'nListA' : 'nList'}, '${i}', '${param.category}', '${param.keyword}')" />
						</td>
					</c:forEach>
						<c:if test="${startPage+pages < lastPage}">
						<td><input class="turn" type="button" value="▶"
							onClick="paging(${(user == 'admin') ? 'nListA' : 'nList'}, '${startPage+pages}', '${param.category}', '${param.keyword}')"	/>
						</td>
					</c:if>
				</tr>
			</table>
        </div>	

	</div>
	
	<%@include file="/footer.jsp"%>

</body>

</html>

