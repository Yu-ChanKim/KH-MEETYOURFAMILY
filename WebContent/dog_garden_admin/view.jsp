<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<script src='./js/garden_admin/garden_admin.js'></script>
<link rel="stylesheet" href="/css/garden_admin/garden_admin.css" type="text/css">
</head>
<body>
<div id='admin_garden_view'>
   <h2>강아지 상세정보</h2>
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

      <hr>
   
      <div class='btns'>
         <input type='button' value='수정' id='btnModify'/>
         <input type='button' value='삭제' id='btnDelete'/>
         <input type='button' value='목록으로' id='btnSelect'/>
      </div>
      <input type='hidden' name='serial' value='${vo.dog_serial}'/>
      <input type='hidden' name='delFile1' value='${vo.dog_photo1}'/>
        <input type='hidden' name='delFile2' value='${vo.dog_photo2}'/>
          <input type='hidden' name='delFile3' value='${vo.dog_photo3}'/>
            <input type='hidden' name='delFile4' value='${vo.dog_photo4}'/>   
   </form>   
<script>admin()</script>
</div>
</body>
</html>