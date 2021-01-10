<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        
		<div class="title" id="title_1" onClick="location.href='/dog_MYF/noticeList'">
			공지사항
		</div>
		<div class="title" id="title_2" onClick="location.href='/dog_MYF/postList'">
			게시판
		</div>
		<div id="titleBox"></div>
        

        
        <div class="detail">
       	    <form id="register" action="/dog_MYF/postList" method="post" enctype="multipart/form-data">
	            <table>
					<tr>
	                	<td colspan="1" class="box1 radius_LT">제목</td>
	                    <td colspan="3" class="box2 radius_RT">
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
							<input type="file" name="file" accept=".jpg, .gif, .png, .jpeg, .bmp" multiple>
						</td>
	                </tr>
					<tr>
						<td colspan="4" class="box2 radius_B">
							<textarea class="scrollV" name="content" placeholder="내용을 입력해주라."></textarea>
						</td>
					</tr>				
	            </table>
            </form>
        </div>  	
        
        <div class="btns">
            <button class="detailBtn" onClick="location.href='/dog_MYF/postList'">목록</button>
            <button class="detailBtn" type="submit" form="register" name="register" value="register">등록</button>
        </div>

    </div>

	<%@include file="/footer.jsp"%>

</body>

</html>