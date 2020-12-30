<%@page import="garden.model.dao.DogDao"%>
<%@page import="garden.model.vo.DogVo"%>
<%@page import="java.util.List"%>
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
		
		<%
			DogDao dao = new DogDao();
			List<DogVo> list = dao.select();
			
			//total 16마리 / col 3개 row 6개 필요
			int dogCnt = list.size();
			int col = 3;
			int row = (dogCnt/col) + (dogCnt%col>0? 1:0);
			//출력개수를 총개수보다 많지않게 처리하는 값을 저장하는 변수
			int checkNum =0;
			
			for(int i=0; i<row; i++){
		%>
		<div id='main'>
			<% for(int j=0; j<col; j++){ 
				DogVo vo = list.get(checkNum);
			%>
			<div class='group' id='group1'>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_1.jsp"><img

						src="./img/dog_image/<%=vo.getDog_photo() %>" width='330px' height='330px'
						onmouseover="Show_Minibar(this, '견종: <%=vo.getDog_breed() %>' ,'성별 : <%=vo.getDog_gender() %>','나이 : <%=vo.getDog_age() %>','MBTI : <%=vo.getDog_mbti() %>' );"></a>

					<div id="MiniBar_title"></div>
					<p><%=vo.getDog_name() %></p>
				</div>
			</div>
		<%
			checkNum++;
			if(checkNum == dogCnt) break;
			}
		%>
		</div>
			<% } %>
	</div>


	<script type="text/javascript">Show_Minibar()</script>
</body>
</html>