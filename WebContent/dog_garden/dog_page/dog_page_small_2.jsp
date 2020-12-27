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
				<p>찰랑</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(소)비숑프리제1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> <span>비숑프리제</span> <span>성격</span> <span>말썽안피움</span>
						<span>성별</span> <span>수컷</span> <span>나이</span> <span>4살</span> <span>체중</span>
						<span>3.6kg</span>
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
							src="./img/dog_image/(소)비숑프리제1.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(소)비숑프리제2.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(소)비숑프리제3.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(소)비숑프리제4.jpg" width="940px"
							, height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>찰랑 </span>(이)에요
				</p>
				<p id='stroy1'>
					하얀털에 간식좋아하는 장난꾸러기 찰랑이에요<br> 찰랑이는 구조당시 심장사상충에 걸려 있었고<br>
					현재 심장사상충 치료중입니다.<br> (심장사상충 임시보호 가능합니다.)<br> <br>
					수컷답게 마킹을 하는 찰랑이 입니다~!<br> 입양후에 산책을 나가게 되면 집안에서의 마킹은 없어질거라 믿어요~<br>
					입소시에 전혀 관리가 안 되어있는 모습으로 들어왔던 찰랑이..<br> 한번 싹 털을 정리하고 나니 짱구반려견
					힌둥이 친구가 되었어요 !!<br> <br> 사상충 치료중으로 현재 행동에 제한이 되다보니<br>
					아직 다양한 상황을 만나보지 못했고<br> 새로운 찰랑이의 모습이 있을까 궁금하기도 합니다<br> <br>
					얼른 임보가정이라도 만나서 답답한 병원 생활을 청산해주고 싶어요!!<br>
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