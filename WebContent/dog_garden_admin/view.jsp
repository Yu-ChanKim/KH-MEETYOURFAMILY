<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<script src='./js/garden_admin/garden_admin.js'></script>
</head>
<body>
<div id='admin_garden'>
   <h2>강아지 관리</h2>
   <form class='view' method='post' name='frm_admin_garden'>
      <label>serialNo</label>
      <input type='text' name='serial' size='10' disabled value='${vo.dog_serial }'/><br>
      <label>분류</label>
      <input type='text' name='group'size='12' disabled value='${vo.dog_group }'/><br>
      <label>이름</label>
      <input type='text' name='name' size='12' disabled value='${vo.dog_name }'/><br>
      <label>견종</label>
      <input type='text' name='breed' size='12' disabled value='${vo.dog_breed }'/><br>
      <label>성별</label>
      <input type='text' name='gender' size='35' disabled value='${vo.dog_gender }'/><br>
      <label>나이</label>
      <input type='text' name='age' size='15' disabled value='${vo.dog_age }'/><br>
      <label>무게</label>
      <input type='text' name='weight' size='6' disabled value='${vo.dog_weight }'/><br>                  
      <label>MBTI</label>
      <input type='text' name='mbti' size='60' disabled value='${vo.dog_mbti }'/><br>
      <label>MBTI 성격</label>
      <input type='text' name='mbti_char' size='60' disabled value='${vo.dog_mbti_char }'/><br>
      <label>스토리</label><br>
      <p>${vo.dog_story }</p>
      <%--
      <label></label>
      <c:choose>
         <c:when test="${empty vo.photo1 }">
            <img src='http://placehold.it/200X140' width='200px' height='140px'/>
         </c:when>   
         <c:otherwise>
            <a href='./img/dog_image/${vo.photo1 }' download='${vo.photo1 }'> <!-- href에 링크걸려있는 애를 download로 다운받겠다 -->
            <img src='./img/dog_image/${vo.photo1 }' width='200px' height='140px'/>
            </a>
         </c:otherwise>
      </c:choose>
       --%>
      <hr>
   
      <div class='btns'>
         <input type='button' value='수정' id='btnModify'/>
         <input type='button' value='삭제' id='btnDelete'/>
         <input type='button' value='목록으로' id='btnSelect'/>
      </div>
      <input type='hidden' name='serial' value='${vo.dog_serial}'/>
      <input type='hidden' name='delFile' value='${vo.dog_photo1}'/>   
   </form>   
<script>admin()</script>
</div>
</body>
</html>