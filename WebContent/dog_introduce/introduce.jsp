<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사업안내</title>
<link rel="stylesheet" href="/css/introduce.css" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@500&display=swap" rel="stylesheet">
</head>
<body>
   <div id='introduce'>
      <div id='intro_1'>
         <div id='intro_menu'>
            <ul>
               <li><p onclick="location.href = '/main.jsp?inc=./dog_introduce/introduce.jsp'">사업소개</p></li>
               <li><p onclick="location.href = '/main.jsp?inc=./dog_introduce/project.jsp'">프로젝트</p></li>
               <li><p onclick="location.href = '/main.jsp?inc=./dog_introduce/procedure.jsp'">입양절차</p></li>
               <li><p onclick="location.href = '/main.jsp?inc=./dog_introduce/position.jsp'">센터위치</p></li>
            </ul>
         </div>
         
         <div id='myf'><h2>Meet Your Family</h2></div>
            
         <div id='intro_2'>
            <img id='img1' src="/img/myflogo.png" width='150px' height='150px'>
            <div></div><br><br>         
            <img width='1000px' src="/img/introduce/사업소개사진3.jpg">
         </div>
         <div id='middle'>
            <br>
            <br>
            <br> <img width="800px" height="600px" src="./img/pj1.JPG">
            <br>
            <div id='box1'>
            <p>더 이상 아파하고 버려지는 강아지들이 없도록</p>
            <p>나에게 맞는 반려견, 반려견에 맞는 주인이 되도록</p>
            <p>그마음이 저희의 시작점입니다.</p>
            </div>
            <br>
            <br>            
            <img id='img2' width='800' height='600' src="/img/introduce/사업소개사진1.jpg">
            <br>
            <br>
            <img id='img3' width='800' height='600' src="/img/introduce/사업소개사진2.jpg">
            <br>
            <br>
            <div id='box2'>
            <h2>성격검사 TEST</h2>
            Meet Your Family에서는 MBTI 검사를 통해 나의 성향과<br>
            강아지의 성향을 알아봄으로써 나에게 '꼭' 맞는 유형의 <br>
            반려견을 알아보며 소중한 가족을 찾을 수 있도록 도와드립니다.<br>         
            </div>         
            <div>
               <iframe width="1000" height="600"
                  src="https://www.youtube.com/embed/-1Gk_aIVBP4" frameborder="0"></iframe>
            </div>         
            <br>            
            <br>         
         </div>
      </div>
   </div>

</body>
</html>