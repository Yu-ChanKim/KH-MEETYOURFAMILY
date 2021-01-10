<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>post_LIST</title>
    <link rel="stylesheet" href="/css/dog_MYF/postList.css">
	<link rel="stylesheet" href="/css/main.css" type="text/css">
</head>

<body>

	<%@include file="/header.jsp"%>
	
	<div id="myf_list">
	    
		<div class="title" id="title_1" onClick="location.href='/dog_MYF/noticeList'">
			공지사항
		</div>
		<div class="title" id="title_2">
			게시판
		</div>
		<div id="titleBox"></div>
		
		<br>현재 접속자(test) : ${currentUser}
			
		<div class="btns">
<%-- ADMIN or GENERAL --%>
			<c:if test="${currentUser == 'admin' or currentUser != 'log-off'}">		
				<form id="regPage" action="/dog_MYF/postList" method="post"></form>				
				<button class="btn" type="submit" form="regPage" name="regPage" value="regPage">글쓰기</button>
			</c:if>
<%-----------%>
<%-- ADMIN --%>			
			<c:if test="${currentUser == 'admin'}">		
				<button class="btn" type="submit" name="deleteIds" form="deleteIds" value="deleteIds">삭제하기</button>
			</c:if>
<%-----------%>
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
			<form id="deleteIds" action="/dog_MYF/postList" method="post">
				<table>
					<tr>
						<fmt:parseNumber var="countPost" type="number" value="0" />
						<c:forEach var="l" items="${list}">
							<c:set var="countPost" value="${countPost + 1}" />
							<td>
								<input class="chkbox" type="checkbox" name="delIds" value="${l.id}">
								<button type="submit" name="detailPage" value="${l.id}">
									<div>
										<img src="/dog_MYF/post/upload/${fn:split(l.files,',')[0]}" alt="imageFile">
									</div>
									<div>
										<p class="writerP">${l.writer}</p>
										<p class="titleP">${l.title}</p>
									</div>
								</button>
							</td>
						<c:if test="${countPost % 3 == 0}">
					</tr>
					<tr>
						</c:if>
						</c:forEach>					
					</tr>
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
        
		<form id="paging" action="/dog_MYF/postList" method="post">
			<input name="category" type="hidden" value="${param.category}">
			<input name="keyword" type="hidden" value="${param.keyword}">
		</form>

	</div>
	
	<%@include file="/footer.jsp"%>

</body>

</html>

