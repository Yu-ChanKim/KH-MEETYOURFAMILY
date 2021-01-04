<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
<script src='./js/garden_admin/garden_admin.js'></script>

</head>
<body>
<div id='admin_garden'>
   <h2>강아지 관리</h2>
   <form class='update' method='post' name='frm_admin_garden'>
      <label>serialNo</label>
      <input type='text' name='serial' size='10' required value='${vo.dog_serial }'/><br>
      <label>분류</label>
      <input type='text' name='group'size='12' required value='${vo.dog_group }'/><br>
      <label>이름</label>
      <input type='text' name='name' size='12' required value='${vo.dog_name }'/><br>
      <label>견종</label>
      <input type='text' name='breed' size='12' value='${vo.dog_breed }'/><br>
      <label>성별</label>
      <input type='email' name='gender' size='35' value='${vo.dog_gender }'/><br>
      <label>나이</label>
      <input type='text' name='age' size='15' value='${vo.dog_age }'/><br>
      <label>무게</label>
      <input type='text' name='weight' size='6' required value='${vo.dog_weight }'/><br>                  
      <label>MBTI</label>
      <input type='text' name='mbti' size='60' required value='${vo.dog_mbti }'/><br>
      <label>MBTI 성격</label>
      <input type='text' name='mbti_char' size='60' required value='${vo.dog_mbti_char }'/><br>
      <label>스토리</label><br>      
      <textarea rows="10" cols="90" name='story'>${vo.dog_story }</textarea><br>
            
      <label>사진</label>
      <input type='file' name='dog_photo1' id='btnPhoto1'/>
      <img src='http://placehold.it/200x140' id='dog_photo1' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->
      <input type='file' name='dog_photo2' id='btnPhoto2'/>
      <img src='http://placehold.it/200x140' id='dog_photo2' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->
      <input type='file' name='dog_photo3' id='btnPhoto3'/>
      <img src='http://placehold.it/200x140' id='dog_photo3' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->
      <input type='file' name='dog_photo4' id='btnPhoto4'/>
      <img src='http://placehold.it/200x140' id='dog_photo4' width='200px' height='140px'/> <!-- 이미지 적용을 위해 id 생성 -->

      <hr>
   
      <div class='btns'>
         <input type='button' value='수정' id='btnUpdate'/>
         <input type='button' value='목록으로' id='btnSelect'/>            
      </div>
        <input type='hidden' name='delFile1' value='${vo.dog_photo1 }'/>
          <input type='hidden' name='delFile2' value='${vo.dog_photo2 }'/>
            <input type='hidden' name='delFile3' value='${vo.dog_photo3 }'/>
              <input type='hidden' name='delFile4' value='${vo.dog_photo4 }'/>
   
   </form>   
</div>
<script>admin()</script>
</body>
</html>