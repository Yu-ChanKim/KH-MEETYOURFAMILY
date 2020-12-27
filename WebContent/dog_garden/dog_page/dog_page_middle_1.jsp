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
				<p>만두</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(중)웰시코기1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> <span>웰시코기</span> <span>성격</span> <span>영리함</span>
						<span>성별</span> <span>수컷</span> <span>나이</span> <span>4살</span> <span>체중</span>
						<span>5.5kg</span>
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
							src="./img/dog_image/(중)웰시코기1.jpg" width="940px" , height="470px" /></a>
						<a class="slide" href=""><img
							src="./img/dog_image/(중)웰시코기2.jpg" width="940px" , height="470px" /></a>
						<a class="slide" href=""><img
							src="./img/dog_image/(중)웰시코기3.jpg" width="940px" , height="470px" /></a>
						<a class="slide" href=""><img
							src="./img/dog_image/(중)웰시코기4.jpg" width="940px" , height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>만두</span>에요
				</p>
				<p id='stroy1'>
					초롱초롱한 동그란 눈에 저절로 웃음이 나오는<br> 장난끼 많은 만두입니다! ^^<br> 갈색 카펫을
					등에 지고있는듯한 몸이 매력뽀인트 에요!<br> <br> 만두는 구조 당시에 기가 죽어서 소심한
					성격이였어요<br> 하지만 시간이 지나면서 사람들을 보면 반가워서 꼬리를 마구 흔든답니다!<br> <br>
					만두는 구조당시 심장사상충에 걸려 있었고<br> 현재 심장사상충 치료중입니다.<br> (심장사상충
					임시보호 가능합니다)<br> <br> 성격은 친화력 좋고 다른아이들과도 문제가 없어요!<br>
					손길이 한번 닿으면 꼬리모터가 작동한답니다! ^^ <br>
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