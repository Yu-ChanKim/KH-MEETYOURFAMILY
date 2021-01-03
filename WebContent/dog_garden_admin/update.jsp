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
      <input type='file' name='dog_photo1' id='btnPhoto'/>
      <input type='file' name='dog_photo2' id='btnPhoto'/>
      <input type='file' name='dog_photo3' id='btnPhoto'/>
      <input type='file' name='dog_photo4' id='btnPhoto'/>
      
      <%--
      <c:choose>
         <c:when test="${empty vo.dog_photo1 }">
            <img src='http://placehold.it/200x140' id='photo' width='200px' height='140px'/>
         </c:when>
         <c:otherwise>
            <img src='./upload/${vo.dog_photo1 }' id='photo' width='200px' height='140px'/>
         </c:otherwise>
      </c:choose>   
       --%>
       
      <hr>
   
      <div class='btns'>
         <input type='button' value='수정' id='btnUpdate'/>
         <input type='button' value='목록으로' id='btnSelect'/>            
      </div>
   
   </form>   
</div>
<script>admin()</script>
</body>
</html>