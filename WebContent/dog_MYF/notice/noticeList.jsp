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
    <link rel="stylesheet" href="/css/dog_MYF/noticeList.css">
	<link rel="stylesheet" href="/css/main.css" type="text/css">
</head>

<body>

	<%@include file="/header.jsp"%>
	
	<div id="myf_list">
	    
		<div class="title" id="title_1" onClick="location.href='/dog_MYF/noticeList'">
			공지사항
		</div>
		<div class="title" id="title_2" onClick="location.href='/dog_MYF/postList'">
			게시판
		</div>
		<div id="titleBox"></div>
		
		<br>현재 접속자(test) : ${currentUser}
			
		<div class="btns">
${noticeListTag_1}
<%--
ADMIN
			<c:if test="${currentUser == 'admin'}">		
				<form id="regPage" action="/dog_MYF/noticeList" method="post"></form>				
				<button class="btn" type="submit" form="regPage" name="regPage" value="regPage">글쓰기</button>
				<button class="btn" type="submit" name="deleteIds" form="deleteIds" value="deleteIds">삭제하기</button>
			</c:if>
--%>
			<form class="search" name="search"  method="post">
				<select class="category" name="category">
					<option ${(param.category == "title") ? "selected" : ""} value="title">제목</option>
					<option ${(param.category == "writer") ? "selected" : ""} value="writer">작성자</option>
				</select>
				<input class="textbox" type="text" name="keyword" value="${param.keyword}" autocomplete="off" placeholder="검색어 입력" />
				<button class="btn" type="submit" name="search" value="search">검색</button>
			</form>
		</div>	

		<div class="list">
			<form id="deleteIds" action="/dog_MYF/noticeList" method="post">
				<table>
					<thead>
						<tr>
							<th><p>번호</p></th>
							<th><p>제목</p></th>
							<th><p>작성자</p></th>
							<th><p>작성일</p></th>
							<th><p>조회수</p></th>
${noticeListTag_2}
<%--
ADMIN
							<c:if test="${currentUser == 'admin'}">
								<th><p>삭제</p></th>
							</c:if>
--%>
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
									<button type="submit" name="detailPage" value="${l.id}">
										${l.title}&nbsp;${(l.commentCount) != 0 ? [l.commentCount] : ""}
									</button>
								</td>
								<td>
									${l.writer}
								</td>
								<td>
									<fmt:formatDate pattern="yyyy-MM-dd" value="${l.regdate}"/>
								</td>
								<td>
									<fmt:formatNumber value="${l.hit}" />
								</td>
${noticeListTag_3}
<%--
ADMIN
								<c:if test="${currentUser == 'admin'}">
									<td>
										<input type="checkbox" name="delIds" value="${l.id}">
									</td>
								</c:if>
--%>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</div>
		
		<div class="paging">
			<table>
				<tr>
					<fmt:parseNumber var="pages" type="number" value="5" />
					<fmt:parseNumber var="pNo" type="number" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
					<fmt:parseNumber var="totalPage" type="number" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
					<fmt:parseNumber var="firstPage" type="number" value="${pNo-((pNo-1) mod pages)}" />
					<fmt:parseNumber var="lastPage" type="number" value="${(firstPage+pages-1 < totalPage) ? firstPage+pages-1 : totalPage}" />

					<c:if test="${pNo > pages}">
						<td>
							<button class="turn" type="submit" form="paging" name="pageNo" value="${firstPage-pages}">◀</button>
						</td>
					</c:if>
					
					<c:forEach var="i" begin="${firstPage}" end="${lastPage}">
						<td>
							<button class="${(pNo == i)?'currentPage':''}" type="submit" form="paging" name="pageNo" value="${i}">${i}</button>
						</td>
					</c:forEach>
						
					<c:if test="${totalPage > lastPage}">
						<td>
							<button type="submit" form="paging" name="pageNo" value="${lastPage+1}">▶</button>
						</td>
					</c:if>
				</tr>
			</table>
        </div>
        
		<form id="paging" action="/dog_MYF/noticeList" method="post">
			<input name="category" type="hidden" value="${param.category}">
			<input name="keyword" type="hidden" value="${param.keyword}">
		</form>

	</div>
	
	<%@include file="/footer.jsp"%>

</body>

</html>

