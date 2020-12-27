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
				<p>서울</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(중)비글1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> <span>비글</span> <span>성격</span> <span>발랄함</span> <span>성별</span>
						<span>암컷</span> <span>나이</span> <span>4살</span> <span>체중</span> <span>3.0kg</span>
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
						<a class="slide" href=""><img src="./img/dog_image/(중)비글1.jpg"
							width="940px" , height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)비글2.jpg" width="940px" , height="470px" /></a>
						<a class="slide" href=""><img src="./img/dog_image/(중)비글3.jpg"
							width="940px" , height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)비글4.jpg" width="940px" , height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>서울</span>에요
				</p>
				<p id='stroy1'>
					토끼처럼 방방 뛰는게 좋은 서울이!<br> 아련아련한 눈동자를 가졌어요 0_0<br> 현재 심장사상충
					치료중입니다.<br> 다른 강아지들보다는 사람을 좋아하기 때문에<br> 서울이만 있는 가정이라면 좋을
					것 같습니다<br> 사회화실에서는 다른 강아지들에게 관심이 없어서 조용히 쉬다가<br> 혼자만의 공간을
					마련해주면 펄쩍펄쩍 신나신나!!<br> 패드도 잘 가리고 대소변은 밖에서 하려고 하는 깔끔쟁이 스타일!<br>

					처음 입소시에 양뒷발을 계속 들고 뛰는 행동이 있어<br> 검진을 받았지만 슬개골은 확인되지는 않는 상태라고
					합니다.<br> 사회화실로 이동후에 어느정도 지내면서 뒷다리에 근육이 많이 붙어<br> 지금은 뛰는
					행동이 없어졌어요 ^^<br> 조심스러우면서도 애교가 넘치는 깔끔쟁이 서울이!<br> 서울이의 가족을
					기다립니다^^<br>
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