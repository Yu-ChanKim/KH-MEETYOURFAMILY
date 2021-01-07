<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
    <link rel="stylesheet" href="/css/main.css" type="text/css">
    <style>
		#TlqkfTlqkf {
			text-align: center;
			padding : 100px;
			background-color: beige;
			font-size: 40px;
			font-weight: bolder;
		}
    	#TlqkfTlqkf p {
			text-align: center;
			font-size: 22px;
			font-weight: bolder;
		}
    	#TlqkfTlqkf button {
    		display: inline-block;
			font-size: 18px;
    		width: 180px;
    		height: 35px;
    		margin: 5px;
    		cursor: pointer;
    	}
    </style>
</head>

<body>

	<%@include file="/header.jsp"%>
	
	<div id="TlqkfTlqkf">
		임시 회원 세션
		<p>[현재 상태] ${currentUser}</p>
		<button type="submit" name="login" form="loginGeneral" value="">로그인(id-gildong)</button>
		<button type="submit" name="login" form="loginAdmin" value="">로그인(id-admin)</button>
		<button type="submit" name="logout" form="logout" value="">로그아웃</button>
		<br>
		<button onClick="location.href='/dog_MYF/noticeList'">공지사항</button>
		<button onClick="location.href='/dog_MYF/postList'">게시판</button>
		<button> ? </button>		
	</div>	
	
	<form action="/dog_MYF/login" id="loginGeneral" method="post">
		<input name="id" type="hidden" value="gildong">  
		<input name="pw" type="hidden" value="18">       
	</form>
	<form aciton="/dog_MYF/login" id="loginAdmin" method="post">
		<input name="id" type="hidden" value="admin">  
		<input name="pw" type="hidden" value="admin">       
	</form>
	<form aciton="/dog_MYF/login" id="logout" method="post"></form>
	
	<%@include file="/footer.jsp"%>

</body>

</html>