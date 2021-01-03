<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마당 관리자</title>
<script src='./js/garden_admin/garden_admin.js'></script>
</head>
<body>
<div id='admin_garden'>
   <h3>강아지 관리</h3>
   
   <form name='frm_admin_garden' method='post' id='frm_admin_garden'>
      <input type='button' value='추가' id='btnInsert' />
      <div>         
         <input type='hidden' name='serial' />
      </div>
   </form>
   
   <div class='title'>
      <span class='no'>serialNo</span>
      <span class='group'>분류</span>
      <span class='name'>이름</span>
      <span class='breed'>견종</span>
      <span class='mbti'>MBTI</span>
   </div>
   <div class='items'>   
      <c:forEach var='vo' items="${list }"> <!-- servlet 에서 request에 담은 list를 뜻한다. -->
         <div class='item' onclick="view('${vo.dog_serial }')">
            <span class='no'>${vo.dog_serial }</span>
            <span class='group'>${vo.dog_group }</span>
            <span class='name'>${vo.dog_name }</span>
            <span class='breed'>${vo.dog_breed }</span>
            <span class='mbti'>${vo.dog_mbti }</span>
         </div>      
      </c:forEach>
   </div>   
</div>
<script>admin()</script>
</body>
</html>