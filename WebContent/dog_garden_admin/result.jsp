<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과</title>
<script src='./js/garden_admin/garden_admin.js'></script>
</head>
<body>
<body>
<div id='admin_garden'>
   <div class='result_msg'>
      작업이 처리 되었습니다.   
   </div>
   <form name='frm_admin_garden' method='post'>      
      <div class='btns'>
         <input type='button' value='목록으로' id='btnSelect'/>
      </div>
   </form>
</div>
<script>admin()</script>
</body>
</html>