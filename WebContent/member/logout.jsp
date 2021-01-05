<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그아웃</title>
<script>
	function logout(){
		
		var f = document.myForm;
		//로그아웃 버튼 눌렀을 때 넘어가는 버튼
		f.action="<%=cp%>/join/logout.do";
		f.submit();
	}
</script>

</head>
<body>
<form action="" method="post" name="myForm">
<p>로그아웃 되었습니다.</p>

<input class="login1" type="button" value="메인으로 이동하기" class="btn2" onclick="logout();">
</form>
</body>
</html>