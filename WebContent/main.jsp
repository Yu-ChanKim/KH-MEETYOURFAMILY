<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>MEET YOUR FAMILY</title>
<link rel="stylesheet" href="/css/main.css" type="text/css">
<script src='/lib/jquery-3.5.1.min.js'></script>
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
<script src="http://code.jquery.com/jquery-3.2.1.slim.min.js" 
        integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g="
      crossorigin="anonymous"></script>
<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>
<script src="./js/main.js"></script>
<link rel="stylesheet" type="text/css" href="./css/main.css" />
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
      <!--------------------------------------------  상단 헤더 -------------------------------------------->
      <%@include file="header.jsp"%>
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
                     <a class='button' href="main.jsp?inc=/dog_test/testMain.jsp">검사하러 가기</a>
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
                  <img src="/img/myflogo.png" width='90px' height='90px'><h2>Meet Your Family</h2>
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
                  <div>
                     <img src="/img/love.png" width='500px' height='500px'>
                  </div>
                  <div id="love1">
                     <h2>
                        <p>'사랑주기'</p>
                     </h2>
                     <p>사랑주기는 후원 서비스입니다.</p>
                     <p>여러분의 소중한 도움으로</p>
                     <p>생명을 살릴 수 있습니다.</p>
                  </div>
                  <div id="love2">
                     <p>동물실험으로 생명이 위태로운,</p>
                     <p>학대로 인해 몸과 마음에 큰 상처를 입은,</p>
                     <p>사고로 인해 장애를 갖게 되어버린,</p>
                   
                     <p>지금 당장 몸과 마음에 치료가 필요한 가엾고</p>
                     <p>여린 생명들을 위하여 Meet Your Family가 함께합니다.</p>
                  </div>
               </div>
               <div id="together">
                  <div id="together1">
                     <h2>
                        <p>'함께하기'</p>
                     </h2>
                     <p>- 아이들을 위한 최소한의 사랑 책임금 -</p>
                     <br>
                     <li>책임금은 수익목적재분양, 재유기파양, 생산출산업자입양,<br>식용도용, 재정능력 없는 가정을
                        필터링 하기 위한 최소한의<br>장치입니다.
                     </li>
                     <li>책임금은 유기동물 보호 및 케어, 입양장려 캠페인, 유기견방지<br>캠페인 등에 쓰여집니다.
                     </li>
                     <li>충분한 신뢰를 입증한 재입양 회원은 책임비가 면제될 수<br>있습니다.
                     </li>
                  </div>
                  <div id="together2">
                     <p>사랑스러운 당신의 가족을 찾으세요.</p>
                     <p>힘든 일을 겪었음에도 아이들은 순수한 눈동자와</p>
                     <p>미소를 잃지 않고 넘치는 정을 나누어 줄</p>
                     <p>새 동반자를 찾고 있습니다.</p>
                     <p>아이들에게 따뜻한 손길을 내어주세요!</p>
                  </div>
                  <div>
                     <img src="/img/together.png" width='500px' height='500px'>
                  </div>
               </div>
            </article>
         </section>
         <!--------------------------------------------  후기글  -------------------------------------------->
         <aside>
            <!-- <div id ='aside_'>         aside -->
            <div id='aside'>
               <!-- adide_1 -->
               <li>반려인 이야기</li>
            </div>
            <div class="slick-items">
               <!-- aside_2 -->
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진1.jpg" />
                  </div>
                  <div>
                     <p>보다 충만하고 보람찬 생활로 삶을 꽉채우고 있습니다. 우리강아지가 아주 좋은 가족이자 친구가 되어주네요!
                        반려하기로 결심하기까지 꽤 오랜시간 신중하게 생각해보았는데 정말 옮은 선택이었습니다. 반려동물을 선택 할 때
                        주거형태, 경제능력, 성격적으로 잘 맞을 수 있는 성향을 가진 품종의 아이를 신중하게 생각해보시면 좋을거 같습니다.
                     </p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진2.jpg" />
                  </div>
                  <div>
                     <p>안녕하세요~ 다들 요즘 유튜브나 인터넷 매체를 통해서 강아지와 함께하는 분들은 많이 보실거라 생각해요.
                        인스타그램을 통해서도 반려견 인스타그램을 하시는 분들도 많아지고 여러방면으로 저도 강아지를 많이 접하게 되었는데요.
                        그만큼 반려동물과 함께하는 분들이 많아서 반려동물 1000만시대라고 할 정도로 이제는 익숙해진거 같아요</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진3.jpg" />
                  </div>
                  <div>
                     <p>사실 이렇게 강아지와 함께하기까지 많은 시간을 들여서 고민하고 또 고민했던거 같아요. 하지만 지금은
                        강아지를 데려온 이상 후회를 전혀 하지 않아서 얼마나 다행인지 모른답니다. 강아지분양하시는 분들이 제 후기를 보고
                        많은 참고를 하셨으면 좋겠습니당</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진4.jpg" />
                  </div>
                  <div>
                     <p>강아지 분양을 위해 여기저기 많이 다녀봤지만 직원분들 너무 친절하고 사장님도 이것저것 많이 챙겨주시고
                        meet your family 말그대로 가족같아서 너무 좋았습니다~ 강아지도 이쁘게 잘 키우고 있습니다
                        감사합니다!!</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진5.jpg" />
                  </div>
                  <div>
                     <p>솜이 오자마자 적응 잘해서 짖음도 없구~ 배변도 잘가려서 울타리도 필요없더라구요ㅎㅎ 그래도 아직은 자는
                        모습이 천사예요^^ 물론 언제 봐도 천사지만~ ㅋㅋㅋ 볼 때마다 사랑스러운 울 애기! 앞으로도 건강하게
                        자라다오~~~</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진6.jpg" />
                  </div>
                  <div>
                     <p>저번주 토요일 8월10일에 데려온 우리 딩가예요^^ 요즘 딩가때문에 퇴근하고 어디 놀러가지도않고 곧장
                        집으로 달려갑니다 ㅋㅋㅋ 일하는내내 일도 손에 안잡히고 보고싶고 ㅜㅜ 아른아른 거리네요 ㅋㅋㅋ 애기가 너무 활발하고
                        잘놀고 코카 특성상 식탐도 엄청나서 자율배식은 힘들것같네요.....................그래서 자동급식기를
                        샀답니다 ㅋㅋㅋ 그래도 먹성좋으니까 보기에 흐뭇해요 ㅋㅋ</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진7.jpg" />
                  </div>
                  <div>
                     <p>분양당시에 저희가 애견지식이 부족하고아무런 용품도 준비되지않은상태여서 난감했는데 친절히 설명해주시고
                        필요한 용품 풀셋트로 싸게 주셔서 감사했습니다~ 빨리 5차까지 접종시키고 우리딩가랑 같이 놀러다니고싶네요^^
                        이쁜애기 데려올수있게 해주셔서 감사합니다~</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진8.jpg" />
                  </div>
                  <div>
                     <p>혼자살기시작하면서 외롭다고 징징거렸더니 남자친구가 고민끝에 강아지를 분양받자며~^^ 그러다가 찾게 된
                        MeetYourFamily 후기좋길래 늦은시간에 연락드렸는데 오라고하셔서 냅다달려갔죠. 정말 애들이 이쁘더라구요
                        지금까지 가본 애견샵중짱이였음</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진9.jpg" />
                  </div>
                  <div>
                     <p>우리쪼꼬 너무 귀엽게 애교도 많이부리고 굉장히 활발해요. 처음 분양받으러 갔을때 한눈에 반해서 데려온ㅎㅎ
                        사장님도 설명 잘해주시고 이것저것 챙겨주셧어요!! 매장도 굉장히 깔끔하게 관리도 잘 하고 계셔서 믿고 분양 받을 수
                        있었어요ㅎㅎ</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진10.jpg" />
                  </div>
                  <div>
                     <p>가족들 분위기도 좋아졌고^^ 일주일반정도 지났을때 몸에 조금 피부병같은게 나긴했는데 아직 어리다보니
                        면역력이 약해서 그런거라구 하더라구요 이쁘게 잘 키울께요ㅎㅎㅎ 넘모 감사합니다~ 항상 행복하시고 번창하세요!!</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진11.jpg" />
                  </div>
                  <div>
                     <p>몇일전에 우리 가족들과 오랜만에 TV앞에 모두 모여서 예능프로그램을 보는데 너무나도 사랑스럽고 귀여운
                        강아지가 나오더라구요. 그 후로 가족들과 진지한 얘기를 한 후에 분양을 하기로 결정했는데요. 너무너무 만족합니다.
                        가정에 행복과 웃음이 끊이질 않네요!! 너무 감사합니다~</p>
                  </div>
               </div>
               <div class='slick-div'>
                  <div>
                     <img width='275px' height='275px' src="./img/main_postscript/사진12.jpg" />
                  </div>
                  <div>
                     <p>항상 웃음 많고 쾌할하던 엄마도 갱년기가 찾아오셨는지 우울함과 무기력증에 시달리셨죠...엄마가 예민해지니
                        집안 분위기가 굉장히 쳐지기 시작했는데 반려견을 키우면서 부터는 엄마의 웃음소리가 많이들리고 많이 좋아지고 있어요!
                        앞으로도 정성껏 키울테니 건강하게만 자라다오~</p>
                  </div>
               </div>
            </div>            
         </aside>
      </c:if>
      <c:if test='${inc != incc}'>
         <jsp:include page="<%=inc %>" />
      </c:if>
      <!-------------------------------------------- 하단 푸터 -------------------------------------------->
      <%@include file="footer.jsp"%>
   </div>
</body>
</html>