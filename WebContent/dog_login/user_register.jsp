<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">    
    <title>회원가입</title>
    <link rel="stylesheet" href="./css/login.css" type="text/css">
	
</head>
<body> 

 <div class="container">      
   <div style="position: relative;">
      <div id="contents">
        <div class="member-contents">
          <div class="container-login">
            <div class="member-top-title">
              <h3>회원가입</h3>
              <span class="line"></span>
            </div>
            <div class="login-box">
              <div class="login-form">
                <form action="./test6.jsp" id="login-form" method="post">
                  <input name="_csrf_token" type="hidden" value="">            
                   <!-- 아이디 -->
                    <div class="l-row l-input">	
                      <input id="user_userid" name="user[userid]" placeholder="아이디" type="text">            
                    </div>
                    
                    <!-- 비밀번호 -->
                    <div class="l-row l-input">
                      <input data-cy="password" id="user_password" name="user[password]" placeholder="비밀번호" type="password">
                    </div>
                    
                    <!-- 비밀번호확인 -->
                    <div class="l-row l-input">
                      <input data-cy="password" id="user_password" name="user[password]" placeholder="비밀번호확인" type="password">
                    </div>
                    
                    <!-- 이름입력 -->
                    <div class="l-row l-input">
                      <input data-cy="user_username" id="user[username]" name="user[username]" placeholder="이름입력" type="text">
                    </div>
                    
                    <!--  생년월일 -->
                     <div class="l-row l-input">
                     <input type="text" id="user_born" name="user_born" placeholder="ex:2020" value>
           			 <select id="month" class="sel" aria-label="월">
                  		   <option value>월</option>
		                   <option value="01">1</option>
		                   <option value="02">2</option>
		                   <option value="03">3</option>
		                   <option value="04">4</option>
		                   <option value="05">5</option>
		                   <option value="06">6</option>
		                   <option value="07">7</option>
		                   <option value="08">8</option>
		                   <option value="09">9</option>
		                   <option value="10">10</option>
		                   <option value="11">11</option>
		                   <option value="12">12</option>
               		  </select>
               		  <select id="day" class="sel" aria-label="일">
                		   <option value>일</option>
			                  <option value="01">1</option>
			                  <option value="02">2</option>
			                  <option value="03">3</option>
			                  <option value="04">4</option>
			                  <option value="05">5</option>
			                  <option value="06">6</option>
			                  <option value="07">7</option>
			                  <option value="08">8</option>
			                  <option value="09">9</option>
			                  <option value="10">10</option>
			                  <option value="11">11</option>
			                  <option value="12">12</option>
			                  <option value="13">13</option>
			                  <option value="14">14</option>
			                  <option value="15">15</option>
			                  <option value="16">16</option>
			                  <option value="17">17</option>
			                  <option value="18">18</option>
			                  <option value="19">19</option>
			                  <option value="20">20</option>
			                  <option value="21">21</option>
			                  <option value="22">22</option>
			                  <option value="23">23</option>
			                  <option value="24">24</option>
			                  <option value="25">25</option>
			                  <option value="26">26</option>
			                  <option value="27">27</option>
			                  <option value="28">28</option>
			                  <option value="29">29</option>
			                  <option value="30">30</option>
			                  <option value="31">31</option>
	                     </div>
                     
                     <!-- 질문선택 -->
                     <div class="l-row l-input">
                     
                       <input type="text" id="user_question" name="user_questionn" placeholder="질문선택" value>
                   		<table>
                   		<tr>
                   		<select id="question" class="sel">
			               <option value>질문선택</option>
			                <option value="01">너 이름 뭐?</option>
				            <option value="02">너 어디 삼?</option>
				            <option value="03">너 번호 뭐?</option>

			            </select>
			            </table>   
                    </div>
                    
                    <!-- 질문답변 -->
                    <div class="l-row l-input">
                    <input type="text" id="question_answer" name="question_answer" placeholder="질문 답변 입력" value>
                    </div>
                     
                     <!-- 성별 -->
                     <div class="l-row l-input">
                    	
		             <select id="gender" class="sel">
			               <option value>성별</option>
			               <option value="남자">남자</option>
			                <option value="여자">여자</option>
			               
			            </select>
		            
                    </div>
                    
                    <a class="button button-80 button-round button-mouse-border" href="./test6.jsp">
                    <span class="font-ns title-small8 color-mouse b">회원가입</span>
                  </a>
                    
                      <button class="button button-80 button-round button-point-border"  type="submit" name="button" data-cy="submit" >
                        <span class="title-small8 color-peach b">회원가입</span>
                      </button>

                    
                  
                </form>
              </div>
            <span class="line"></span>
           </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>