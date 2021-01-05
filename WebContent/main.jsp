<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>MEET YOUR FAMILY</title>
<link rel="stylesheet" href="/css/main.css" type="text/css">
<script src='/lib/jquery-3.5.1.min.js'></script>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script src="http://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script src="./js/main.js"></script>
<link rel="stylesheet" type="text/css" href="./css/main.css"/>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String inc = "main.jsp";
   if(request.getParameter("inc") != null) {
      inc = request.getParameter("inc");
   } 

String incc = "main.jsp";   
      request.setAttribute("inc",inc);
      request.setAttribute("incc",incc);

%>

   <div class="container">
   <%@include file="header.jsp"%>

      <!--------------------------------------------  상단 헤더 -------------------------------------------->

      <!-------------------------------------------- 중간 섹션 -------------------------------------------->

      <c:if test='${inc == incc}'>
         <section>
            <!------------------ 첫번째 ------------------>
            <article id="article1">
               <div id="article1_div1">
                  <h2>
                     저의<br>가족이 되어 주세요
                  </h2>
                  <li>어떤 강아지와 잘 맞을지 궁금할땐, 견종 매칭테스트</li>
                  <div id='testpage'>
                    <li><a href="main.jsp?inc=/dog_test/testMain.jsp">검사하러 가기</a></li>
                  </div>
               </div>
               <div id='article1_div2'>
                  <img src="/img/foot.png" />
               </div>
               <div id='article1_div3'>
                  <img width='600px' height='600px' src="./img/dog.png" />
               </div>
            </article>
            <!------------------ 두번째 ------------------>
            <article id="article2">
               <div>
                  <h2>Meet Your Family</h2>
                  <p id='p1'>오늘날 전 세계적으로 700억여 마리의 동물들이 인간에 의해</p>
                  <p>태어나고 죽음에 이르고 있습니다.</p>
                  <p id='p3'>우리가 함께 사는 세상에는 따스한 관심이 필요한 곳이 너무나도 많습니다.</p>
                  <p id='p4'>반려동물들은 항상 우리를 바라보고 조건없는 따뜻한 사랑을 줍니다.</p>
                  <p>이제 우리가 먼저 그들에게 다가가는 건 어떨까요?</p>
                  <h3>
                     <p id='p6'>Companion Animal Mind & I</p>
                  </h3>
                  <p id='p7'>반려동물의 마음과 나의 마음을 함께 들여다보세요.</p>
                  <p>서로를 위한 건강한 반려생활, 이제 meet your family로 시작해보세요.</p>
               </div>
            </article>
            <!------------------ 세번째 ------------------>
            <article id="article3">
                <div id="love">
                    <div><img src="/img/love.png" width='500px' height='500px'></div>
                    <div id="love1">
                        <h2><p>'사랑주기'</p></h2>                       
                        <p>사랑주기는  후원 서비스입니다.</p>
                        <p>여러분의 소중한 도움으로</p>
                        <p>생명을 살릴 수 있습니다.</p>
                    </div>
                    <div id="love2">
                        <p>동물실험으로 생명이 위태로운,</p>
                        <p>학대로 인해 몸과 마음에 큰 상처를 입은,</p>
                        <p>사고로 인해 장애를 갖게 되어버린,</p>
                        <br>
                        <p>지금 당장 몸과 마음에 치료가 필요한 가엾고</p>
                        <p>여린 생명들을 위하여 Meet Your Family가 함께합니다.</p>
                    </div>
                </div>
                <div id="together">
                    <div id="together1">
                        <h2><p>'함께하기'</p></h2>                     
                        <p>- 아이들을 위한 최소한의 사랑 책임금 -</p>
                        <br>                       
                        <li>책임금은 수익목적재분양, 재유기파양, 생산출산업자입양,<br>식용도용, 재정능력 없는 가정을 필터링 하기 위한 최소한의<br>장치입니다.</li>
                        <li>책임금은 유기동물 보호 및 케어, 입양장려 캠페인, 유기견방지<br>캠페인 등에 쓰여집니다.</li>
                        <li>충분한 신뢰를 입증한 재입양 회원은 책임비가 면제될 수<br>있습니다.</li>                   
                    </div>
                    <div id="together2">
                        <p>사랑스러운 당신의 가족을 찾으세요.</p>
                        <p>힘든 일을 겪었음에도 아이들은 순수한 눈동자와 미소를 잃지</p>
                        <p>않고 넘치는 정을 나누어줄 새 동반자를 찾고 있습니다.</p>
                        <p>아이들에게 따뜻한 손길을 내어주세요!</p>
                    </div>
                    <div><img src="/img/together.png" width='500px' height='500px'></div>
                </div>
            </article>
        </section> 
         <!--------------------------------------------  후기글  -------------------------------------------->
         <aside>
            <div id='aside'>             
               <li>반려인 이야기</li>
            </div>
            <div class="slick-items">
                <div class='slick-div'>
                   <div><img width='250px' height='400px' src="./img/foot.png"/></div>
                   <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
                </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog.png"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>            
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/love.png"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog_image/(중)웰시코기2.jpg"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog_image/(대)시베리안허스키1.jpg"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog_image/(중)비글3.jpg"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog_image/(소)푸들3.jpg"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog_image/(소)비숑프리제2.jpg"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog_image/(소)요크셔테리어2.jpg"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>
            <div class='slick-div'>
               <div><img width='250px' height='400px' src="./img/dog_image/(소)치와와4.jpg"/></div>
               <div>사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모 감사해요넘모감사해요넘모 감사해요넘모 감사해요넘모 감사해요</div>
            </div>                        
            </div>

         </aside>
      </c:if>
      <c:if test='${inc != incc}'>
         <jsp:include page="<%=inc %>" />
      </c:if>
      <!-------------------------------------------- 하단 푸터 -------------------------------------------->
   </div>

<%@include file="footer.jsp"%>
</body>
</html>