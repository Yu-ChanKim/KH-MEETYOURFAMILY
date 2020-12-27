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
		<div id='text'>| 대형견 |</div>
		<!-- 강아지 사진 시작-->
		<div id='main'>
			<div id='big1'>

				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_big_1.jsp"><img
						src="./img/dog_image/(대)시베리안허스키1.jpg" width='330px' height='330px'
						onmouseover="Show_Minibar(this,'견종: 시베리안허스키','성별 : 수컷','나이 : 2(세)','성격 : 독립성 높음' );"></a>
					<div id="MiniBar_title"></div>
					<p>수호랑</p>
				</div>
				<div id='big2'>
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