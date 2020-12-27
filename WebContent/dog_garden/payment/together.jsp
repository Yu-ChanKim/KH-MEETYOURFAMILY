<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>함께하기(책임금)</title>
<link rel="stylesheet" href="./css/payment.css" type="text/css">
</head>
<body>
   <div id='love'>
      <div id='love_title'>
         <h2>함께하기(책임금)</h2>
         <p>
            "모든 생명은 보호받고 종중받을 권리가 있습니다"<br> Meet Your Family는 사람과 동물이
            생태적·윤리적 조화를 이루며<br> 살아가는 세상을만들기 위해 다방면에서 활동을 펼쳐가고 있습니다.
         </p>
      </div>

      <div id='line1'></div>

      <form id='love_frm1' method='post'>
         <label for='love_select' id='love_select'>후원금액</label>
         <input type='text' id='love_select' name='love_select' size='7'/><br> 
         <input type='button' id='price1' class='price' name='price' value='10,000원'/> 
         <input type='button' id='price2' class='price' name='price' value='30,000원'/>
         <input type='button' id='price3' class='price' name='price' value='50,000원'/> 
         <input type='button' id='price4' class='price' name='price' value='100,000원'/> 
         <input type='button' id='price5' class='price' name='price' value='300,000원'/><br> 
         <input type='button' id='price6' class='price' name='price' value='직접입력'/>
      </form>

      <div id='line2'></div>


      <form id='love_frm2' method='post'>
         <div id='info'>회원정보</div>
         <label for='name' id='name'>이름</label> 
         <input type='text' id='name' name='name' placeholder='이름을 입력하세요.' size='17'/><br> 
         <label for='phone' id='phone'>휴대전화</label>
         <input type='text' id='phone' name='phone' placeholder='번호를 입력하세요.' size='17'/>
      </form>

      <div id='line2'></div>

        <div id='pay'>
          <div id='payment'>결제정보</div> <br>
            <label><input type='checkbox' id='card' size='10'>신용카드결제</label><br>            
        </div>

        <input type='button' value='완료' id='love_btn' name='love_btn' />

   </div>

</body>
</html>