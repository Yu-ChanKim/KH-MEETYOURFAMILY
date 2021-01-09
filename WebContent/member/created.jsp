<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script src='./lib/jquery-3.5.1.min.js'></script>
<link rel="stylesheet" href="/css/log_join/join.css" type="text/css" />
<script src="/js/log_join/join.js"></script>
</head>
<body>
	<!-- 헤어 가져오는거 -->
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
							<form action="" method="post" name="myForm">

								<!-- 아이디 -->
								<div class="l-row l-input">
									<input type="text" id="userId" name="userId" placeholder="아이디"
										maxlength='10' required pattern='[\w!\-$]{3,15}' />
								</div>

								<hr width="100%" color="gray">

								<!-- 비밀번호 -->
								<div class="l-row l-input">
									<input type="password" id="userPwd" name="userPwd"
										placeholder="비밀번호" required pattern='[a-zA-Z가-힣]{2,20}' />
								</div>

								<hr width="100%" color="gray">

								<!-- 성명 -->
								<div class="l-row l-input">
									<input type="text" id="userName" name="userName"
										placeholder="성명" />
								</div>

								<hr width="100%" color="gray">

								<!-- 생년월일  -->
								<div class="l-row l-input">
									<input type="date" id="userBirth" name="userBirth"
										pattern="\d{1,2}/\d{1,2}/\d{4}" min="1920-01-01"
										max="2020-12-31" value="1996-01-01" />
								</div>

								<hr width="100%" color="gray">

								<!-- 전화  -->
								<div class="l-row l-input">
									<input type="text" name="userTel" id="userTel"
										placeholder="전화번호  ex)01000000000 ('-'작성x)"
										pattern="(010)-\d{3,4}-\d{4}" />
								</div>

								<hr width="100%" color="gray">


								<!-- 질문답변 입력  -->
								<div class="l-row l-input">
									<input type="text" id="userAnswer" name="userAnswer"
										placeholder="내가 다닌 초등학교는? ex)00초등학교" />
								</div>

								<hr width="100%" color="gray">


								<!-- 성별 -->
								<div class="l-row l-input">
									<input type="text" id="userGender" name="userGender"
										placeholder="성별을 입력하세요  ex) 남자" />
								</div>

								<hr width="100%" color="gray">

								<div class="l-row l-input">
									<input type="text" id="zipcode" name="zipcode" id="zipcode"
										placeholder="우편번호" />
								</div>

								<div class="l-row l-input">
									<input type="button" value="우편번호 찾기&nbsp;" onclick="execDaumPostCode()">
								</div>
								
								<div class="l-row l-input">
									<input type="text" id="address1" name="address1" id="address1"
										placeholder="도로명주소" /> 
								</div>
								<div class="l-row l-input">
									<input type="text" id="address2" name="address2" id="address2" placeholder="상세주소" />
								</div>



								<!-- 버튼 -->
								<input class="join-button" type="button" value="가입하기"
									class="btn2" onclick="sendIt()" />

								<hr width="100%" color="gray">

								<input type="reset" value="다시입력" class="btn3"
									onclick="document.myForm.userId.focus();" /> <input
									type="button" value="작성취소" class="btn3"
									onclick="javascript:location.href='/main.jsp';" />

								<div id="layer"
									style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
									<img
										src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
										id="btnCloseLayer"
										style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
										onclick="closeDaumPostcode()" alt="닫기 버튼" />
								</div>



							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="/js/log_join/adress.js"></script>
</body>
</html>



































