<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>notice_DETAIL</title>
    <link rel="stylesheet" href="../css/notice/noticeDetail.css">
</head>

<body>

    <div id="header">
		여긴 헤더야, 헤더.
    </div>

    <div id="noticeDetail">
        
        <div class="noticeDetail_title">
            공지사항
        </div>


        <div class="noticeDetail_table">
            <table>
                    <tr>
                        <td class="bg_color">제목</td>
                        <td class="indentation" colspan="3">
                        	${n.title}
                        </td>
                    </tr>
                    <tr>
                        <td class="bg_color">작성자</td>
                        <td class="indentation">
                        	${n.writer}
                        </td>
                        <td class="bg_color">작성일</td>
                        <td class="indentation">
							<fmt:formatDate pattern="yyyy년 MM월 dd일 hh시 mm분" value="${n.regdate}"/>
                        </td>
                    </tr>
                    <tr>
                    
                        <td class="bg_color">첨부파일</td>
                        
                        <td class="indentation">
                        	<c:forTokens var="fileName" items="${n.files}" delims="," varStatus="st">
                        		<a href="${fileName}">${fileName}</a>
                        		<c:if test="${!st.last}">
                        			/ 
                        		</c:if>
                        	</c:forTokens>
                        </td>
                        
                        <td class="bg_color">조회수</td>
                        <td class="indentation">
                        	<fmt:formatNumber value="${n.hit}" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="noticeDetail_content">
            ${n.content}
        </div>

        <div class="noticeDetail_btns">
        
            <input type="button" class="noticeDetail_btns_list" onClick="location.href='noticeList'" value="목록">
            <input type="button" class="noticeDetail_btns_edit" onClick="location.href=''" value="수정">
            <input type="button" class="noticeDetail_btns_delete" onClick="location.href=''" value="삭제">
            
        </div>

        <div class="noticeDetail_table">
            <table>
				<tr>
                    <td class="bg_color">이전글</td>
                    <td class="indentation" colspan="3">이전글</td>
                </tr>
                <tr>
                	<td class="bg_color">다음글</td>
                    <td class="indentation" colspan="3">다음글</td>
                </tr>
            </table>
        </div>

    </div>

    <div id="footer">
		여긴 푸터다, 푸터.
	</div>
</body>

</html>