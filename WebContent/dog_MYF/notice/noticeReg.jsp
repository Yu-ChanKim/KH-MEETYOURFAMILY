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
</head>

<body>

	<%@include file="/header.jsp"%>

    <div id="myf_detail">
        
        <div class="title">
            공지사항
        </div>
        
        <br>현재 접속자(test) : ${currentUser}
        
        <div class="detail">
       	    <form id="register" action="/dog_MYF/noticeList" method="post" enctype="multipart/form-data">
	            <table>
					<tr>
	                	<td colspan="1" class="box1">제목</td>
	                    <td colspan="3" class="box2">
	                    	<textarea class="titleInput" name="title" placeholder="제목을 입력해주라."></textarea>
	                    </td>
					</tr>
					<tr>
						<td colspan="1" class="box1">작성자</td>
						<td colspan="3" class="box2">
							${currentUser}
						</td>
					</tr>
	                <tr>
						<td colspan="1" class="box1">첨부파일</td>
						<td colspan="3" class="box2">
							<input type="file" name="file" multiple>
						</td>
	                </tr>
					<tr>
						<td colspan="4" class="box2">
							<textarea name="content" placeholder="내용을 입력해주라."></textarea>
						</td>
					</tr>				
	            </table>
            </form>
        </div>      	
        
        <div class="btns">
            <button class="detailBtn" onClick="location.href='/dog_MYF/noticeList'">목록</button>
            <button class="detailBtn" type="submit" form="register" name="register" value="register">등록</button>
        </div>

    </div>

	<%@include file="/footer.jsp"%>

</body>

</html>