<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
.swal-footer {
	text-align: center;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<script>
   $().ready(function () {                   
       swal({
          icon: "success",
           title: "회원가입이 완료 되었습니다.",
           button: "반려견 MBTI 검사하기",
       }) .then((value) => {
          if(value) {
             location.href ='/main.jsp?inc=./dog_test/mbti_test.jsp'
          }
       })                   
   });
</script>
</body>
</html>