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
				<p>수호랑</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(대)시베리안허스키1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span>
						<span>시베리안허스키</span> 
						<span>성격</span> 
						<span>독립성높음</span> 
						<span>성별</span> 
						<span>수컷</span> 
						<span>나이</span> 
						<span>2살</span>
						<span>체중</span> 
						<span>12.5kg</span>
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
					<label for="Slide2" id="s2"></label> <input type="radio" name="slide" class="control" id="Slide3" /> 
					<label for="Slide3" id="s3"></label>
					<input type="radio" name="slide" class="control" id="Slide4" /> 
					<label for="Slide4" id="s4"></label>
					<div class="overflow-wrapper">
					<a class="slide" href=""><img src="./img/dog_image/(대)시베리안허스키1.jpg" width="940px", height="470px" /></a> 
					<a class="slide" href=""><img src="./img/dog_image/(대)시베리안허스키2.jpg" width="940px", height="470px" /></a>
					<a class="slide" href=""><img src="./img/dog_image/(대)시베리안허스키3.jpg" width="940px", height="470px" /></a>
					<a class="slide" href=""><img src="./img/dog_image/(대)시베리안허스키4.jpg" width="940px", height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>수호랑</span>에요
				</p>
				<p id='stroy1'>
					순둥 순둥한 작은 호랑이 수호랑이랍니다!<br> 
					사람을 너무 좋아해서 똥그란 눈망울이 반짝반짝 빛나죠.<br>

					외동으로 자란 듯, 다른 강아지 친구들을 좋아하지는 않아요.<br> 
					귀차니즘에 빠져 마치 고양이처럼 낮잠 자기가 취미랍니다.<br> 
					(매 시간 같은 장소, 같은 자리에 누워 있는 건 안비밀!)<br> 
					구조당시 심장사상충에 걸려있었지만, 현재 치료 완치 했어요~<br> 
					신나게 아침 산책하며 하루를 시작하는 건강한 수호랑!<br>
					해맑은 웃음이 예쁜 수호랑의 가족이 되어주세요.<br>
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