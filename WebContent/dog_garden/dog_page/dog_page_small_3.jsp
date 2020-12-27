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
				<p>무무</p>
			</div>
			<div id='box2'></div>
			<h4>올바른 반려문화를 지향합니다.</h4>
			<hr>
			<br>
			<div id='dog_info'>
				<!-------------------- 사진 영역 ------------------>
				<div id='img'>
					<img src="./img/dog_image/(소)치와와1.jpg" width="500" height="500">
				</div>

				<!-------------------- 강아지 정보 영역 ------------------>
				<div id='info1'>
					<div id='info2'>
						<span>견종</span> <span>치와와</span> <span>성격</span> <span>충성심강함</span>
						<span>성별</span> <span>수컷</span> <span>나이</span> <span>3살</span> <span>체중</span>
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
							src="./img/dog_image/(소)치와와1.jpg" width="940px" , height="470px" /></a>
						<a class="slide" href=""><img
							src="./img/dog_image/(소)치와와2.jpg" width="940px" , height="470px" /></a>
						<a class="slide" href=""><img
							src="./img/dog_image/(소)치와와3.jpg" width="940px" , height="470px" /></a>
						<a class="slide" href=""><img
							src="./img/dog_image/(소)치와와4.jpg" width="940px" , height="470px" /></a>
					</div>
				</div>
			</div>

			<!-------------------- 스토리 영역 ------------------>
			<div id='story'>
				<p>
					<span>안녕하세요.</span> 제 이름은 <span>무무</span>에요
				</p>
				<p id='stroy1'>
					똥꼬발랄~ ★<br> 사람에게 푹 빠져있는 무릎강아지랍니다.<br> 사람과 교감을 중요하게 생각하고
					사람을 너무 좋아해요!<br> 안겨서 애교부리는 것을 즐겨하죠.<br> <br> 그래서인지
					불리불안이 관찰돼요.<br> 다른 개들 귀에 멍멍 짖곤 해 사랑을 독차지하는 외동이 좋을 듯해요.<br>
					<br> 사람이 있다면 천사견이 되는 반전매력견 무무!<br> 패드배변과 앉아-기다려-손 등의 지시어도
					곧잘 하는 똑똑한 푸들이랍니다.<br> <br> 무무는 긴급구호조치를 통해 센터에 입소했어요.<br>
					전 가족들은 무무를 치료나 관리등을 하지 않아서 갖가지 질환과 심장사상충에 걸려있었지만 얼마전 치료를 완료하고 건강을
					되찾았답니다!<br> <br> 하지만, 검사와 치료 결과 육류 알러지를 갖고 있어 처방식 사료 급여를
					하고 있고,<br> 만성 결막염을 지녀 관리가 지속적으로 필요해요.<br> 사람 곁이 너무 좋은
					치와와, 무무의 가족이 되어주세요.<br>
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