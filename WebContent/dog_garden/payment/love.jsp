<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사랑주기(후원금)</title>
<link rel="stylesheet" href="/css/payment.css" type="text/css">
</head>
<body style ='overflow-y:hidden'>
   <div id='love'>
      <div id='love_title'>
         <h2>사랑주기(후원)</h2>
         <p>
            "모든 생명은 보호받고 종중받을 권리가 있습니다"<br> Meet Your Family는 사람과 동물이
            생태적·윤리적 조화를 이루며<br> 살아가는 세상을만들기 위해 다방면에서 활동을 펼쳐가고 있습니다.
         </p>
      </div>

      <div id='line1'></div>

      <form name ='love_frm1' id='love_frm1' method='post'>
		<div id ='info'>후원금액</div>
		<input type='text' class='info1' id='loveSelect' name='love_select' placeholder='후원금액을 입력하세요'/>
        <label for='love_select' class = 'info1'>원</label> 
      
      </form>

      <div id='line2'></div>


      <form id='love_frm2' method='post'>
         <div id='info'>회원정보</div>
         <label class='info1' for='name'>이름</label> 
         <input class='info1' type='text' id='name' name='name' placeholder='이름을 입력하세요'/><br> 
         <label class='info1' for='phone'>휴대전화</label>
         <input class='info1' type='text' id='phone' name='phone' placeholder='번호를 입력하세요'/>
      </form>

      <div id='line2'></div>

        <div id='pay'>
          <div id='payment'>결제정보</div> <br>
            <input type='checkbox' id='card' checked="true" onclick="return false;" size='20'>
            <label class='info1'>신용카드 결제</label><br>          
        </div>
      <div id='finish'>
           <input type='button' value='완료' id='love_btn' name='love_btn'/>
      </div>

   </div>

   
<script>
var love_btn = document.getElementById("love_btn");
love_btn.onclick = function(){
   var frm = document.love_frm1;
   var price = frm.love_select.value;
   opener.document.frm_garden.price.value = price;
   self.close();
   }
</script>

</body>
</html>