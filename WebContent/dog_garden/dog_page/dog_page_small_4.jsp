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
				<p>아라</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(소)요크셔테리어1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> <span>요크셔테리어</span> <span>성격</span> <span>외로움많음</span>
						<span>성별</span> <span>암컷</span> <span>나이</span> <span>13살</span> <span>체중</span>
						<span>2.9kg</span>
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
							src="./img/dog_image/(소)요크셔테리어1.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(소)요크셔테리어2.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(소)요크셔테리어3.jpg" width="940px"
							, height="470px" /></a> <a class="slide" href=""><img
							src="./img/dog_image/(소)요크셔테리어4.jpg" width="940px"
							, height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>아라</span>에요
				</p>
				<p id='stroy1'>
					구조 당시 센터에서 살펴본 바로는 추정나이 13세.<br> <br> 이미 한쪽 눈은 백내장이 있어
					치료를 받은 상태 2.9kg의 매우 마른 몸.<br> 심한 각질과 발치가 요구되는 치아상태.<br>
					항체가 검사 결과 항체가 낮아 백신 접종이 요구되었습니다.<br> <br> 센터에 입소한 아라는
					치료하면서 살도 찌고, <br> 꽤나 괜찮은 컨디션을 갖게 되었습니다.<br> <br> 거의
					1년이 지난 요즘 돌아다니다가 빙빙 도는 치매행동을 보이며<br> 잦은 배변 실수를 하고 약해진 심장과 신장으로
					인해 간헐적으로 심하게 아파<br> 센터 직원들을 걱정시키며 마음을 아프게 했어요.<br> <br>
					아라의 입양을 바람은 어쩌면 사치일지도 모릅니다.<br> 이미 어리고 젊은 많은 아이들도 가족을 못 만나고 있는
					현실에<br> 입양과 동시에 지속적으로 들어가는 병원비, 하루하루 달라지는<br> 컨디션에 입양 가족들
					마음도 천국과 지옥을 오갈 테니 말이죠.<br> <br> 하지만 지금 이 순간에도 그런 기적들은
					이뤄지고 있고<br> 우리 센터에서도 다시 한 번 환상적인 기적을 바래봅니다.<br> 길지 않을 아라의
					마지막 곁을 지켜주실 가족을 기다립니다.<br>
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