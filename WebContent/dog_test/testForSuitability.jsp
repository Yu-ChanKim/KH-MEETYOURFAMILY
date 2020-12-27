<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>who's my family</title>
	<link rel="stylesheet" href="css/test_main_suitability.css">
	<script src="js/testForSuitability.js"></script>
</head>

<body>
	<div id="wrap_test">
		<div id="contents_test">
		
			<div class="testMain">
				<div class="wrap_test_startBtn">
					<img class="test_startBtn" src="img/testForSuitability/test_startBtn.png" 
					onmouseover="this.src='img/testForSuitability/test_startBtnOn.png'"
					onmouseout="this.src='img/testForSuitability/test_startBtn.png'" />
				</div>
				<div class="wrap_test_mainLogo">
					<img class="test_mainLogo" src="img/testForSuitability/test_mainLogo.png"/> 
				</div>
			</div>

			<div class="testArea">
				<div class="test_ing">
					<div class="wrap_test_question">
						<img class="test_question test_question1" src="img/testForSuitability/test_question1.png">
						<img class="test_question test_question2" src="img/testForSuitability/test_question2.png">	
						<img class="test_question test_question3" src="img/testForSuitability/test_question3.png">	
						<img class="test_question test_question4" src="img/testForSuitability/test_question4.png">	
						<img class="test_question test_question5" src="img/testForSuitability/test_question5.png">				
					</div>
					<div class="test_answer">
						<img class="test_yesBtn" src="img/testForSuitability/test_yesBtn.png"
							onmouseover="this.src='img/testForSuitability/test_yesBtnOn.png'"
							onmouseout="this.src='img/testForSuitability/test_yesBtn.png'">
						<img class="test_noBtn" src="img/testForSuitability/test_noBtn.png"
							onmouseover="this.src='img/testForSuitability/test_noBtnOn.png'"
							onmouseout="this.src='img/testForSuitability/test_noBtn.png'">
					</div>
				</div>
			</div>
			
			<div class="resultBg_pop">
				<div class="result_container">
					<img class="test_resultBox" src="img/testForSuitability/testResult_pass.png"/>
					<a href="main.jsp?inc=./dog_test/mbti_test.jsp" class="test_resultBtn_link">
						<img class="test_resultBtn" src="img/testForSuitability/testBtn_pass.png"/>					
					</a>
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>