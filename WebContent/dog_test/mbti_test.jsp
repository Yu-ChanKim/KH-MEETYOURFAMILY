<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>MBTI_TEST</title>
	<script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
		crossorigin="anonymous">
		</script>
	<link rel="stylesheet" href="css/mbti_test.css">
	<script src="js/mbti_test.js"></script>
</head>

<body>



	<div id="mbti">
		<div class="main">
			<img class="main_img" src="img/img_mbti/mbti_test_main.PNG" alt="반려견 MBTI 테스트">
			<img class="start btn_pointer" src="img/img_mbti/mbti_test_start0.PNG" alt="테스트 시작"
				onmouseover="this.src='img/img_mbti/mbti_test_start1.PNG'"
				onmouseout="this.src='img/img_mbti/mbti_test_start0.PNG'">
		</div>
		<div class="pop_bg">
			<div class="pop_contents">
				<img class="mbti_question" src="#" />
				<img class="mbti_go btn_pointer" src="img/img_mbti/mbti_test_btn_go0.PNG" alt="만나러 가기"
					onmouseover="this.src='img/img_mbti/mbti_test_btn_go1.PNG'"
					onmouseout="this.src='img/img_mbti/mbti_test_btn_go0.PNG'"
					onclick = "location.href = '/garden.do?siba=page&dname=&group=전체&mbti=' + mbtiResult.join('')">
				<div class="mbti_answer">
					<img class="mbti_answer_A btn_pointer" src="img/img_mbti/mbti_test_btn_A0.png" alt="A선택"
						onmouseover="this.src='img/img_mbti/mbti_test_btn_A1.png'"
						onmouseout="this.src='img/img_mbti/mbti_test_btn_A0.png'">
					<img class="mbti_answer_B btn_pointer" src="img/img_mbti/mbti_test_btn_B0.png" alt="B선택"
						onmouseover="this.src='img/img_mbti/mbti_test_btn_B1.png'"
						onmouseout="this.src='img/img_mbti/mbti_test_btn_B0.png'">
				</div>
			</div>
		</div>
	</div>


</body>

</html>