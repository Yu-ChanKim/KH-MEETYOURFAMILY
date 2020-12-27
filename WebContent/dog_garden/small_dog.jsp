<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마당</title>
<link rel="stylesheet" href="./css/main.css" type="text/css">
<link rel="stylesheet" href="./css/garden.css" type="text/css">
<script src="./js/garden.js"></script>
<script src='./lib/jquery-3.5.1.min.js'></script>
</head>
<!------------------------------------------------------------------------------------- 바디 ------------------------------------------------------------------------------------->
<body>


	<!-------------------------------------------- 중간 -------------------------------------------->
	<div id='garden'>
		<div id='box1'></div>
		<%@include file="garden_menu.jsp"%>
		<div id='box2'></div>
		<div id='text'>| 소형견 |</div>
		<!-- 강아지 사진 시작-->
		<div id='main'>
			<div class='group' id='group1'>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_1.jsp"><img
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

			<div class='group' id='group4'>
				<div id='last'>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_4.jsp"><img
						src="./img/dog_image/(소)요크셔테리어1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 요크셔테리어','성별 : 암컷','나이 : 13(세)','성격 : 외로움 많음' );"></a>
					<div id="MiniBar_title"></div>
					<p>아라</p>
				</div>
			</div>
		</div>
	</div>


	<script>
		Show_Minibar()
	</script>
</body>
</html>