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
				<p>주호</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(대)도베르만1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> 
						<span>도베르만</span> 
						<span>성격</span> 
						<span>활동량많음</span> 
						<span>성별</span> 
						<span>수컷</span> 
						<span>나이</span> 
						<span>1살</span>
						<span>체중</span> 
						<span>10.6kg</span>
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
					<label for="Slide2" id="s2"></label> 
					<input type="radio" name="slide" class="control" id="Slide3" /> 
					<label for="Slide3" id="s3"></label>
					<input type="radio" name="slide" class="control" id="Slide4" /> 
					<label for="Slide4" id="s4"></label>
					<div class="overflow-wrapper">
					<a class="slide" href=""><img src="./img/dog_image/(대)도베르만1.jpg" width="940px" , height="470px" /></a>
					<a class="slide" href=""><img src="./img/dog_image/(대)도베르만2.jpg" width="940px" , height="470px" /></a>
					<a class="slide" href=""><img src="./img/dog_image/(대)도베르만3.jpg" width="940px" , height="470px" /></a>
					<a class="slide" href=""><img src="./img/dog_image/(대)도베르만4.jpg" width="940px" , height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>주호</span>에요
				</p>
				<p id='stroy1'>
					똥꼬발랄하게 노는게 좋은 주호예요 ★<br> 
					사람을 엄청 좋아하고 다른 친구들과도 어울려놀고<br>

					장난끼많은 귀염둥이입니다 ♥<br> 
					몸에 손이 닿으면 좋아좋아! (날좀 만져 주호!!)<br>
					다른강아지가 와서 만져달라고 하면 퀭!!하고 쫒아내요<br> 
					그만큼 사람손을 좋아한답니다 (나만 만져 주호!!)<br>

					자기공간에서는 대소변을 보지않는 깔끔한 성격이에요!<br> 
					소리에 대한 민감도나 털빠짐은 쏘쏘한 편입니다 ^^<br>

					운동량이 많아서 주호와 재밌게 놀아주실분이면 좋습니다~<br> 
					사회화실에서 친구들과 열심히 잘 놀고있어요<br>
					계속 놀아도 지치지 않는 개너자이저 입니다<br> 
					쪼코털이 매력적인 주호의 평생 가족을 찾습니다 ^^ <br>
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