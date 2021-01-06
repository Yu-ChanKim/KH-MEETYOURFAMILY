<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
<body>
<script>
$().ready(function () {                   
   swal({
       icon: "success",
        title: "작업이 처리 되었습니다.",
        button: "목록으로",
    }) .then((value) => {
          if(value) {
             location.href ='dog_garden?admin=select'
          }
       })                   
});
</script>
</body>
</html>