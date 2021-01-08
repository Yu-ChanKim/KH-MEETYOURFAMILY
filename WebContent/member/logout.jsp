<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MYF : 로그아웃</title>
<link rel="stylesheet" href="/member/data/join.css" type="text/css"/>

<script>
   function logout(){
      
      var f = document.myForm;
      //로그아웃 버튼 눌렀을 때 넘어가는 버튼
      f.action="/join/logout.do";
      f.submit();
   }
</script>

</head>
<body>
<div class="container">
 <div style="position: relative;">
  <div id="contents">
   <div class="member-contents">
    <div class="container-login">
     <div class="member-top-title">
      <h3>로그아웃 되었습니다.</h3>
       <span class="line"></span>
     </div>   
     <div class="login-box">
      <div class="login-form">
      <form action="" method="post" name="myForm">
         
         <input type="button" value="메인으로 이동하기" class="btn2" onclick="logout();">
      </form>
      </div>
     </div>
    </div>
   </div>
  </div>
 </div>
</div>


</body>
</html>