<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마당</title>
<link rel="stylesheet" href="./css/garden.css" type="text/css">
<link rel="stylesheet" href="./css/main.css" type="text/css">
<script src='./lib/jquery-3.5.1.min.js'></script>
<script src="./js/garden.js"></script>

</head>
<!------------------------------------------------------------------------------------- 바디 ------------------------------------------------------------------------------------->
<body>


	<!-------------------------------------------- 중간 -------------------------------------------->
	<div id='garden'>
		<div id='box1'></div>
		<%@include file="garden_menu.jsp"%>

		<div id='box2'></div>
		<div id='text'>| 전체 |</div>
		<!-- 강아지 사진 시작-->
		<div id='main'>
			<div class='group' id='group1'>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_1.jsp" readOnly><img
						src="./img/dog_image/(소)푸들1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this, '견종: 푸들','성별 : 수컷','나이 : 2(세)','성격 : 애교많음' );"></a>
					<div id="MiniBar_title"></div>
					<p>츄비</p>
				</div>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_2.jsp"><img
						src="./img/dog_image/(소)비숑프리제1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 비숑프리제','성별 : 수컷','나이 : 4(세)','성격 : 말썽피지않음' );"></a>
					<div id="MiniBar_title"></div>
					<p>찰랑</p>
				</div>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_3.jsp"><img
						src="./img/dog_image/(소)치와와1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 치와와','성별 : 수컷','나이 : 3(세)','성격 : 충성스러움' );"></a>
					<div id="MiniBar_title"></div>
					<p>무무</p>
				</div>
			</div>

			<div class='group' id='group2'>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_4.jsp"><img
						src="./img/dog_image/(소)요크셔테리어1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 요크셔테리어','성별 : 암컷','나이 : 13(세)','성격 : 외로움 많음' );"></a>
					<div id="MiniBar_title"></div>
					<p>아라</p>
				</div>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_middle_1.jsp"><img
						src="./img/dog_image/(중)웰시코기1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 웰시코기','성별 : 수컷','나이 : 4(세)','성격 : 영리함' );"></a>
					<div id="MiniBar_title"></div>
					<p>만두</p>
				</div>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_middle_2.jsp"><img
						src="./img/dog_image/(중)프렌치불독1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 프렌치불독','성별 : 수컷','나이 : 2(세)','성격 : 대범함' );"></a>
					<div id="MiniBar_title"></div>
					<p>초희</p>
				</div>
			</div>

			<div class='group' id='group3'>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_middle_3.jsp"><img
						src="./img/dog_image/(중)비글1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 비글','성별 : 암컷','나이 : 4(세)','성격 : 활발함' );"></a>
					<div id="MiniBar_title"></div>
					<p>서울</p>
				</div>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_middle_4.jsp"><img
						src="./img/dog_image/(중)보스턴테리어1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 보스턴테리어','성별 : 암컷','나이 : 12(세)','성격 : 차분함' );"></a>
					<div id="MiniBar_title"></div>
					<p>아델</p>
				</div>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_big_1.jsp"><img
						src="./img/dog_image/(대)시베리안허스키1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 시베리안허스키','성별 : 수컷','나이 : 2(세)','성격 : 독립성 높음' );"></a>
					<div id="MiniBar_title"></div>
					<p>수호랑</p>
				</div>
			</div>

			<div class='group' id='group4'>
				<div id='last'>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_big_2.jsp"><img
						src="./img/dog_image/(대)도베르만1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 도베르만','성별 : 수컷','나이 : 1(세)','성격 : 활동량 많음' );"></a>
					<div id="MiniBar_title"></div>
					<p>주호</p>
				</div>
			</div>
		</div>
	</div>


	<script> Show_Minibar()</script>
</body>
</html>