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
				<p>초희</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(중)프렌치불독1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> <span>프렌치불독</span> <span>성격</span> <span>대범함</span>
						<span>성별</span> <span>수컷</span> <span>나이</span> <span>2살</span> <span>체중</span>
						<span>15.3kg</span>
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
							src="./img/dog_image/(중)프렌치불독1.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)프렌치불독2.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)프렌치불독3.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(중)프렌치불독4.jpg" width="940px"
							, height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>초희</span>에요
				</p>
				<p id='stroy1'>
					멍뭉미가 있어 자꾸 쳐다보고 만져보고 싶게해요 ♡<br> 사람을 엄청 좋아해서 오줌을 지리기 까지 해요!<br>

					활발한 성격이라 흥분을 잘해요<br> 모든것에 호기심이 많아서 킁킁 킁킁 +_+<br> 털이 어느정도
					빠지는 편이여서 털에 민감하시면<br> 다시한번 생각해주세요!<br> 누구에게나 쉽게 다가가는
					성격이고,<br> 많이 놀아줄 수 있고 산책도 자주 갈수 있는<br> 인원이 많은 가정에게 좋은
					반려견이 될 것 같습니다 ~<br> 한 번 만나러 오시면 초희의 애교에 쉽게 떠나기 힘드실꺼에요~ ^0^<br>
					애교둥이 초희의 평생가족을 찾습니다!<br>
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