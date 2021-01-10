<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
    <title>notice_DETAIL</title>
    <link rel="stylesheet" href="/css/dog_MYF/noticeDetail.css">
    <link rel="stylesheet" href="/css/main.css" type="text/css">
</head>

<body>

	<%@include file="/header.jsp"%>

    <div id="myf_detail">
        
		<div class="title" id="title_1" onClick="location.href='/dog_MYF/noticeList'">
			공지사항
		</div>
		<div class="title" id="title_2" onClick="location.href='/dog_MYF/postList'">
			게시판
		</div>
		<div id="titleBox"></div>


		
        <div class="detail">
        	<form id="comment" action="/dog_MYF/noticeComment" method="post">
        		<input name="detailPage" type="hidden" value='${param.detailPage}'>
	            <table>
					<tr>
	                	<td colspan="1" class="box1">제목</td>
	                    <td colspan="3" class="box2">
	                    	${n.title}
	                    </td>
					</tr>
	                <tr>
	                    <td colspan="1" class="box1">작성자</td>
	                    <td colspan="3" class="box2">
	                        ${n.writer}
	                	</td>
	                </tr>
					<tr>
	                    <td colspan="1" class="box1">작성일</td>
	                    <td colspan="1" class="box2">
							<fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${n.regdate}"/>
	                    </td>
	                    <td colspan="1" class="box1">조회수</td>
	                    <td colspan="1" class="box2">
	                    	<fmt:formatNumber value="${n.hit}" />
	                    </td>
	                </tr>
	                <tr>
	                    <td colspan="1" class="box1">첨부파일</td>
	                    <td colspan="3" class="box2 contcontent_ent">
	                        <c:forTokens var="fileName" items="${n.files}" delims="/" varStatus="st">
	                        	<a href="/dog_MYF/notice/upload/${fn:split(fileName,',')[0]}", download="${fn:split(fileName,',')[1]}">
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
							<p class="contentTxt">${n.content}</p>
							<c:forEach var="cL" items="${cList}">
								<div class="comment">
									<p class="commentW">${cL.writer} 님의 댓글 &nbsp;&nbsp;<fmt:formatDate pattern=" yyyy-MM-dd HH:mm" value="${cL.regdate}"/></p>
									<p class="commentP">${cL.content}</p>
<%-- ADMIN OR GENERAL --%>
									<c:if test="${currentUser == cL.writer or currentUser == 'admin'}">
										<button type="submit" form="comment" class="detailBtn" name="deleteComment" value="${cL.id}">삭제</button>
									</c:if>
<%-----------%>
								</div>
							</c:forEach>
<%-- LOGIN --%>
							<c:if test="${currentUser != 'log-off' && !empty currentUser}">
								<div class="comment">
									<p class="commentW">${currentUser} 님의 댓글</p>
									<textarea class="commentInput" name="comment" placeholder="댓글을 입력해주라."></textarea>
									<button type="submit" form="comment" class="detailBtn" name="cRegister" value="${n.id}">작성</button>
								</div>
							</c:if>
<%-----------%>
						</td>
					</tr>
					<tr>
						<td colspan="1" class="box1">이전글</td>
						<td colspan="3" class="box3">
							<c:if test="${!empty prevNotice}">
								<button type="submit" form="prevNext" class="prevNext detailBtn" name="prevNext" value="${prevNotice.id}">
									${prevNotice.title}
								</button>
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="1" class="box1">다음글</td>
						<td colspan="3" class="box3">
							<c:if test="${!empty nextNotice}">
								<button type="submit" form="prevNext" class="prevNext detailBtn" name="prevNext" value="${nextNotice.id}">
									${nextNotice.title}
								</button>
							</c:if>
						</td>
					</tr>				                
	            </table>
			</form>            
        </div>

        <div class="btns">
            <button class="detailBtn" onClick="location.href='/dog_MYF/noticeList'">목록</button>
<%-- ADMIN --%>
            <c:if test="${currentUser == 'admin'}">
				<button class="detailBtn" type="submit" form="deleteId" name="deleteId" value="${n.id}">삭제</button>
			</c:if>
<%-----------%>
        </div>
        
    </div>
    
	<form id="deleteId" type="hidden" action="/dog_MYF/noticeList" method="post"></form>
	<form id="prevNext" type="hidden" action="/dog_MYF/noticePrevNext" method="post"></form>
		
	<%@include file="/footer.jsp"%>

</body>

</html>