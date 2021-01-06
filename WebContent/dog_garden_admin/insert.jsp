<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가</title>
<script src='./js/garden_admin/garden_admin.js'></script>
<link rel="stylesheet" href="/css/garden_admin/garden_admin.css" type="text/css">
</head>
<body>
<div id='admin_garden_insert'>
   <h2>강아지 관리</h2>
   <form class='insert' method='post' name='frm_admin_garden'>
      <label>serialNo</label>
      <input type='text' name='serial' size='10' required/><br>
      <label>분류</label>
      <input type='text' name='group'size='12' required/><br>
      <label>이름</label>
      <input type='text' name='name' size='12' required/><br>
      <label>견종</label>
      <input type='text' name='breed' size='12' /><br>
      <label>성별</label>
      <input type='text' name='gender' size='35'/><br>
      <label>나이</label>
      <input type='text' name='age' size='15' /><br>
      <label>무게</label>
      <input type='text' name='weight' size='6' required/><br>                  
      <label>MBTI</label>
      <input type='text' name='mbti' size='60' required/><br>
      <label>MBTI 성격</label>
      <input type='text' name='mbti_char' size='60' required/><br>
      <label>스토리</label><br>
      <textarea rows="20" cols="70" name ='story'>
      </textarea><br>
      <label></label>
      <input type='file' name='dog_photo1' id='btnPhoto1'/> <!-- 이벤트 처리를 위해 id 생성 -->
      <input type='file' name='dog_photo2' id='btnPhoto2'/>
      <input type='file' name='dog_photo3' id='btnPhoto3'/>
      <input type='file' name='dog_photo4' id='btnPhoto4'/><br>
      <img src='http://placehold.it/200x140' id='dog_photo1' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->
      <img src='http://placehold.it/200x140' id='dog_photo2' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->
      <img src='http://placehold.it/200x140' id='dog_photo3' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->
      <img src='http://placehold.it/200x140' id='dog_photo4' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->
         
      <hr>
   
      <div class='btns'>
         <input type='button' value='저장' id='btnSave'/>
         <input type='button' value='목록으로' id='btnSelect'/>            
      </div>
   
   </form>   
</div>
<script>admin()</script>
</body>
</html>