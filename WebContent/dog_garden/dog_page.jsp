<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마당</title>
<link rel="stylesheet" href="./css/dog_page.css" type="text/css">
<link rel="stylesheet" href="./css/main.css" type="text/css">
<link rel="stylesheet" href="./css/garden.css" type="text/css">
<link rel="stylesheet" href="./css/payment.css" type="text/css">
<script src='./js/payment.js'></script>
<script src="./js/garden.js"></script>
<script src='./lib/jquery-3.5.1.min.js'></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
.swal-footer {
   text-align: center;
}

</style>
</head>
<!------------------------------------------------------------------------------------- 바디 ------------------------------------------------------------------------------------->
<body>
   <div class="container">
      <!--------------------------------------------  상단 헤더 -------------------------------------------->

      <!-------------------------------------------- 소형견 푸들 상세 페이지 섹션 -------------------------------------------->

      <div id='dog_page'>
         <div id='box1'></div>
         <div id='dog_page_top'>
            <p>${vo.dog_name }</p>
         </div>
         <div id='box2'></div>
         <h4>올바른 반려문화를 지향합니다.</h4>
         <hr>
         <br>
         <div id='dog_info'>
            <!-------------------- 사진 영역 ------------------>
            <div id='img'>
               <img src="./img/dog_image/${vo.dog_photo1 }" width="500" height="500">
            </div>

            <!-------------------- 강아지 정보 영역 ------------------>
            <div id='info1'>
               <div id='info2'>
                  <span>견종</span> <span>${vo.dog_breed }</span> 
                  <span>성격</span> <span>${vo.dog_mbti_char }</span> 
                  <span>성별</span> <span>${vo.dog_gender}</span> 
                  <span>나이</span> <span>${vo.dog_age }</span> 
                  <span>체중</span> <span>${vo.dog_weight }</span>
               </div>
            </div>
         </div>
         <br>
         <div id='box2'></div>
         <!-------------------- 슬라이드 영역 ------------------>
         <!-- 사진 슬라이드 -->
         <div id="slider-wrapper">
            <div class="inner-wrapper">
               <input checked type="radio" name="slide" class="control" id="Slide1" /> 
               <label for="Slide1" id="s1"></label> 
               <input type="radio" name="slide" class="control" id="Slide2" /> 
               <label for="Slide2" id="s2"></label> 
               <input type="radio" name="slide" class="control" id="Slide3" /> 
               <label for="Slide3" id="s3"></label>
               <input type="radio" name="slide" class="control" id="Slide4" /> 
               <label for="Slide4" id="s4"></label>
               
               <div class="overflow-wrapper">
                  <a class="slide">
                  <img src="./img/dog_image/${vo.dog_photo1 }" width="940px"  height="470px" /></a>				 
                  <a class="slide">
                  <img src="./img/dog_image/${vo.dog_photo2 }" width="940px"  height="470px" /></a>
                  <a class="slide">
                  <img src="./img/dog_image/${vo.dog_photo3 }" width="940px"  height="470px" /></a> 
                  <a class="slide">
                  <img src="./img/dog_image/${vo.dog_photo4 }" width="940px"  height="470px" /></a>
               </div>
            </div>
         </div>

         <!-------------------- 스토리 영역 ------------------>
         <div id='story'>
            <p>
               <span>안녕하세요.</span> 제 이름은 <span>${vo.dog_name }</span>에요
            </p>
            <p id='stroy1'>
               ${vo.dog_story}
            </p>
         </div>
      
        <form name="frm_garden" method='post'>
             <input name='btnSelect' type='hidden'>  
           <input name='price' type='hidden'>        
       </form>    
         
         <div id='dog_btns'>
            <input type="button" value="목록으로" class="basic-input" id='btn_garden'/>
            <c:if test="${empty sessionScope.customInfo.userId }">
            <input type="button" value="함께하기" class="basic-input" id='btn_together_out'/>
            </c:if>
            <c:if test='${not empty sessionScope.customInfo.userId}'>
            <input type="button" value="함께하기" class="basic-input" id='btn_together' onclick='together()'/>
            </c:if>
             
            <input type="button" value="사랑주기" class="basic-input" id='btn_love' onclick='love()'/>
         </div>
      </div>
      <!-------------------------------------------- 하단 푸터 -------------------------------------------->
  
   </div>
   
<script>payment()</script>   
</body>
</html>