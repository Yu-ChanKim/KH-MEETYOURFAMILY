<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>who's my family</title>
	<link rel="stylesheet" href="css/test_main_suitability.css">
</head>
	
<body>
    <div id="wrap">
    
        <!-- contents 영역 시작 -->
		<div id="contents">
		    <div class="center-contents">
		        <div class="container-test">
		
		            <div class="center-top-title">
		                <h3>who's my family</h3>
		                <p>견주가 되기 위한 적합성 검사와 나와 어울리는 강아지를 추천받을 수 있는 MBTI 검사를 받아보세요!</p>
		            </div>
		
		            <div class="center-middle-choice">
		                <div class="test-choice1">
		                    <div class="containerForTest">
		                        <img class="imgForChoice" src="./img/testForSuitability/iconForChoice1.png" alt="비회원으로 검사 >" />
		                        <div class="btnForChoice"><a class="clickForChoice" href="main.jsp?inc=./dog_test/testForSuitability.jsp">비회원으로 검사 > </a></div>
		                    </div>
		                </div>
		                <div class="test-choice2">
		                    <div class="containerForTest">
		                        <img class="imgForChoice" src="./img/testForSuitability/iconForChoice2.png" alt="비회원으로 검사 >" />
		                        <div class="btnForChoice"><a class="clickForChoice" href="">회원가입 후 검사 ></a></div>
		                    </div>
		                </div>
		            </div>
		
		            <div class="center-bottom-notice">
		                <p>※ 안내사항 ※</p><br>
		                <ul class="notice">
		                    <li>비회원으로 검사를 진행하게 될 경우 추천받은 견종을 입양할 수 있는 정보는 제공받지 못합니다.</li>
		                    <li>비회원으로 검사를 진행하게 될 경우 결과의 정보는 저장되지 않습니다.</li>
		                    <li>비회원용 테스트와 회원용 테스트의 검사 내용은 모두 동일합니다.</li>
		                </ul>
		            </div>
		
		        </div>
		    </div>
        </div>
        <!-- contents 영역 종료 -->
        
    </div>
</body>
</html>