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
<script src='./lib/jquery-3.5.1.min.js'></script>
</head>
<!------------------------------------------------------------------------------------- 바디 ------------------------------------------------------------------------------------->
<body>
	<div class="container">
		<!--------------------------------------------  상단 헤더 -------------------------------------------->

		<!-------------------------------------------- 소형견 푸들 상세 페이지 섹션 -------------------------------------------->

		<div id='dog_page'>
			<div id='box1'></div>
			<div id='dog_page_top'>
				<p>아델</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(중)보스턴테리어1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> <span>보스턴테리어</span> <span>성격</span> <span>차분함</span>
						<span>성별</span> <span>암컷</span> <span>나이</span> <span>12살</span> <span>체중</span>
						<span>5.0kg</span>
					</div>
				</div>
			</div>
			<br>
			<div id='box2'></div>
			<!-------------------- 슬라이드 영역 ------------------>
			<!-- 사진 슬라이드 -->
			<div id="slider-wrapper">
				<div class="inner-wrapper">
					<input checked type="radio" name="slide" class="control"
						id="Slide1" /> <label for="Slide1" id="s1"></label> <input
						type="radio" name="slide" class="control" id="Slide2" /> <label
						for="Slide2" id="s2"></label> <input type="radio" name="slide"
						class="control" id="Slide3" /> <label for="Slide3" id="s3"></label>
					<input type="radio" name="slide" class="control" id="Slide4" /> <label
						for="Slide4" id="s4"></label>
					<div class="overflow-wrapper">
						<a class="slide" href=""><img
							src="./img/dog_image/(중)보스턴테리어1.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)보스턴테리어2.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)보스턴테리어3.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)보스턴테리어4.jpg" width="940px"
							, height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>아델</span>에요
				</p>
				<p id='stroy1'>
					2019년 8월에 긴급구조가 되어온 조그만 장애견이 있어요.<br /> 처음 온 날부터 겁을 먹고 모두를 경계하며 어떤
					접촉과 사랑도 거부하던 아이였죠. <br /> 아델이의 하반신 장애는 시간이 지나도 회복되지 않고<br /> 아델이의
					생활에 고통과 불편함을 주었습니다.<br /> <br /> 그렇게 센터에 들어온 지 어느덧 1년이 넘어버린 지금..<br />
					아델이는 불편한 몸이지만, 기저귀를 차고 즐겁게 산책도 하고 밥도 잘 먹고<br /> 처음 들어왔을 때의 아델이보다 더
					마음을 열고 행복해진 모습을 보이고 있습니다.<br /> 아델이는 나이가 있어 털도 푸석하고 두터운 이중모라 털이 많이
					빠지기도 합니다.<br /> <br /> 쉽게 마음을 열지 않고 낯선 사람에게 경계심이 있어 아델이를 돌보기 위해서는<br />
					최대한 많은 만남을 가져야 하고, 스스로 마음을 열 때까지 인내하고 <br />이해해 주어야 하는 상처가 많은
					아이입니다. 그래서 마음을 열고 믿음을 주는 게 어려운 아델이입니다.<br /> 조금은 특별하고 다른 개들과는 다르지만
					스스로 마음을 열 줄 아는 아델이는<br /> 오늘도 이 세상에서 가장 행복한 아이가 되기 위해 새로운 가족을
					기다립니다. <br />
				</p>
			</div>
			<div id='dog_btns'>
				<input type="button" value="목록으로" class="basic-input" id='btn_garden'/> 
				<input type="button" value="함께하기" class="basic-input" id='btn_together'/> 
				<input type="button" value="사랑주기" class="basic-input" id='btn_love'/>
			</div>
		</div>
		<!-------------------------------------------- 하단 푸터 -------------------------------------------->

	</div>
	
	<script>payment()</script>
</body>
</html>