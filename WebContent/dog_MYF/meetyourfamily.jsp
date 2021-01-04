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
    	#TlqkfTlqkf input {
    		display: inline-block;
			font-size: 18px;
    		width: 160px;
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
		<input type="button" onClick="login('gildong', '18')" value="로그인(id-gildong)">
		<input type="button" onClick="login('admin', 'admin')" value="로그인(id-admin)">
		<input type="button" onClick="logout()" value="로그아웃">
		<br>
		<input type="button" onClick="location.href='/dog_MYF/noticeList'" value="공지사항">
		<input type="button" onClick="location.href='/dog_MYF/noticeList/Admin'" value="공지사항(관리자)">
		<input type="button" onClick="location.href='/dog_MYF/postList'" value="게시판">
		<input type="button" value="[미구현]">
	
	</div>	
	<%@include file="/footer.jsp"%>
	
	<script>
		function login(id, pw)
		{
			var frm = document.createElement("form");
			frm.method = "post"
			frm.action = "/dog_MYF/login";
			frm.appendChild(addFormData("btn", "login"));
			frm.appendChild(addFormData("id",id));
			frm.appendChild(addFormData("pw",pw));
			document.body.appendChild(frm);
			frm.submit();	
		}
		function logout()
		{
			var frm = document.createElement("form");
			frm.method = "post"
			frm.action = "/dog_MYF/login";
			frm.appendChild(addFormData("btn","logout"));
			document.body.appendChild(frm);
			frm.submit();
		}
		function addFormData(name, value)
		{
		    var elmt = document.createElement("input");
		    elmt.setAttribute("type", "hidden");
		    elmt.setAttribute("name", name);
		    elmt.setAttribute("value", value);
		    return elmt;
		}
	</script>
</body>

</html>