<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찾아오는길</title>
<link rel="stylesheet" href="/css/introduce.css" type="text/css">
<script src="./js/introduce.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Maven+Pro:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div id='introduce'>
   <div id='intro_1'>
      <div id='intro_menu'>
          <ul>
               <li><p id='check2' onclick="location.href = '/main.jsp?inc=./dog_introduce/introduce.jsp'">사업소개</p></li>
              <li><p id='check1' onclick="location.href = '/main.jsp?inc=./dog_introduce/project.jsp'">프로젝트</p></li>
               <li><p id='check3' onclick="location.href = '/main.jsp?inc=./dog_introduce/procedure.jsp'">입양절차</p></li>
               <li><p id='check4' onclick="location.href = '/main.jsp?inc=./dog_introduce/position.jsp'">센터위치</p></li>
            </ul>
       </div>   
         
       <div class=txc-textbox style="border-top: #cbcbcb 1px solid; 
            border-right: #cbcbcb 1px solid; border-bottom: #cbcbcb 1px solid; 
            padding-bottom: 10px; padding-top: 10px; padding-left: 10px; 
            border-left: #cbcbcb 1px solid; padding-hight: 10px; background-color: #ffffff">
            
          <h2 style="TEXT-ALIGN: center">오시는길</h2>
      </div>   
      
       <div class=txc-textbox style="border-top: #cbcbcb 1px solid; 
            border-right: #cbcbcb 1px solid;  border-bottom: #cbcbcb 1px solid; 
            padding-bottom: 35px;  padding-top: 35px; padding-left: 10px; 
            border-left: #cbcbcb 1px solid; padding-hight: 10px; background-color: #ffffff">
            
           <h2 style="text-align: center">주소</H2>
          <h2 style="text-align: center">서울특별시 영등포구 선유동2로 57 이레빌딩(구관) 19F, 20F (T: 1544-9970 / F: 02-2163-8560)</h2>
       </div>   
         
      <div class=txc-textbox style="border-top: #cbcbcb 1px solid; 
            border-right: #cbcbcb 1px solid; border-bottom: #cbcbcb 1px solid; 
            padding-bottom: 35px; padding-top: 35px; padding-left: 10px; 
             border-left: #cbcbcb 1px solid; padding-hight: 10px; background-color: #ffffff">
            
            <h2 style="text-align: center">선유고등학교/(구)강서세무서에서 </h2>
            <h2 style="text-align: center">버스 :<img src="img/bus_image/sub01_06_busB.jpg" alt="지선"> 7612 
            <img src="img/bus_image/sub01_06_busR.jpg" alt="간선">
               1000 / 1200 / 1300 / 1301 / 1302 / 1400 / 1500 / 1601 / M6628 / M6724</h2>
            
            <h2 style="text-align: center">당산역에서</h2>
            <h2 style="text-align: center">버스 :<img src="img/bus_image/sub01_06_busB.jpg" alt="지선"> 7612 
            <img src="img/bus_image/sub01_06_busR.jpg" alt="간선">
            602 / 760 / 5620 / 5714 / 5614 / 6623 / 6631
               </h2>
       </div>   
         
       <div class=txc-textbox style="border-top: #cbcbcb 1px solid; 
            border-right: #cbcbcb 1px solid; border-bottom: #cbcbcb 1px solid; 
            padding-bottom: 35px; padding-top: 35px; padding-left: 10px; 
            border-left: #cbcbcb 1px solid; padding-hight: 10px; background-color: #ffffff">
            
          <h2 style="text-align: center">지하철</H2>
           <h2 style="text-align: center">지하철 2, 9호선 당산역 12번 출구 400m</h2>
       </div>   
         
      <!-- * 카카오맵 - 지도가져오기 -->
      <!-- 1. 지도 노드 -->
       <div id="daumRoughmapContainer1610117943286" 
           class="root_daum_roughmap root_daum_roughmap_landing">
       </div>
      <br>
   </div>
</div>

<!--
   2. 설치 스크립트
   * 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
<script charset="UTF-8" class="daum_roughmap_loader_script" 
src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
<!-- 3. 실행 스크립트 -->
<script charset="UTF-8">
   new daum.roughmap.Lander({
      "timestamp" : "1610117943286",
      "key" : "23thz",
      "mapWidth" : "1500",
      "mapHeight" : "360"
   }).render();
</script>
 
</body>
</html>