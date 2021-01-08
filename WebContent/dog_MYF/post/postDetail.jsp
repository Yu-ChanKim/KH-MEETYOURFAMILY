<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
    <title>post_DETAIL</title>
    <link rel="stylesheet" href="/css/dog_MYF/postDetail.css">
    <link rel="stylesheet" href="/css/main.css" type="text/css">
</head>

<body>

	<%@include file="/header.jsp"%>

    <div id="myf_detail">
        
        <div class="title">
            게시판
        </div>

		<br>현재 접속자(test) : ${currentUser}
		
        <div class="detail">
        	<form id="comment" action="/dog_MYF/postComment" method="post">
        		<input name="detailPage" type="hidden" value='${param.detailPage}'>
	            <table>
					<tr>
	                	<td colspan="1" class="box1">제목</td>
	                    <td colspan="3" class="box2">
	                    	${p.title}
	                    </td>
					</tr>
	                <tr>
	                    <td colspan="1" class="box1">작성자</td>
	                    <td colspan="3" class="box2">
	                        ${p.writer}
	                	</td>
	                </tr>
	                <tr>
	                    <td colspan="1" class="box1">작성일</td>
	                    <td colspan="1" class="box2">
							<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${p.regdate}"/>
	                    </td>
	                    <td colspan="1" class="box1">조회수</td>
	                    <td colspan="1" class="box2">
	                    	<fmt:formatNumber value="${p.hit}" />
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="1" class="box1">첨부파일</td>
	                    <td colspan="3" class="box2 contcontent_ent">
	                        <c:forTokens var="fileName" items="${p.files}" delims="/" varStatus="st">
	                        	<a href="/dog_MYF/post/upload/${fn:split(fileName,',')[0]}", download="${fn:split(fileName,',')[1]}">
									${fn:split(fileName,',')[1]}
	                        	</a>
	                        	<c:if test="${!st.last}">
	                        		/ 
	                        	</c:if>
	                        </c:forTokens>
	                    </td>
	                </tr>
					<tr>
						<td colspan="4" class="box2 content_">
							<p class="contentTxt">${p.content}</p>
							<c:forEach var="cL" items="${cList}">
								<div class="comment">
									<p class="firstP">${cL.writer} 님의 댓글 &nbsp;&nbsp;<fmt:formatDate pattern=" yyyy-MM-dd HH:mm" value="${cL.regdate}"/></p>
									<p>${cL.content}</p>
<%-- ADMIN OR GENERAL --%>
									<c:if test="${currentUser == cL.writer or currentUser == 'admin'}">
										<button type="submit" form="comment" class="detailBtn" name="deleteComment" value="${cL.id}">삭제</button>
									</c:if>
<%-----------%>
								</div>
							</c:forEach>
<%-- LOGIN --%>
							<c:if test="${currentUser != 'log-off' or empty currentUser}">
								<div class="comment">
									<p>작성자</p>
									<textarea class="commentInput" name="comment" placeholder="댓글을 입력해주라."></textarea>
									<button type="submit" form="comment" class="detailBtn" name="cRegister" value="${p.id}">작성</button>
								</div>
							</c:if>
<%-----------%>
						</td>
					</tr>
					<tr>
						<td colspan="1" class="box1">이전글</td>
						<td colspan="3" class="box3">
							<c:if test="${!empty prevPost}">
								<button type="submit" form="prevNext" class="prevNext detailBtn" name="prevNext" value="${prevPost.id}">
									${prevPost.title}
								</button>
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="1" class="box1">다음글</td>
						<td colspan="3" class="box3">
							<c:if test="${!empty nextPost}">
								<button type="submit" form="prevNext" class="prevNext detailBtn" name="prevNext" value="${nextPost.id}">
									${nextPost.title}
								</button>
							</c:if>
						</td>
					</tr>				                
	            </table>
			</form>            
        </div>

        <div class="btns">
            <button class="detailBtn" onClick="location.href='/dog_MYF/postList'">목록</button>
<%-- ADMIN --%>
            <c:if test="${currentUser == 'admin'}">
				<button class="detailBtn" type="submit" form="deleteId" name="deleteId" value="${p.id}">삭제</button>
			</c:if>
<%-----------%>
        </div>
        
    </div>
    
	<form id="deleteId" type="hidden" action="/dog_MYF/postList" method="post"></form>
	<form id="prevNext" type="hidden" action="/dog_MYF/noticeDetail" method="post"></form>
		
	<%@include file="/footer.jsp"%>

</body>

</html>