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

</head>
<!------------------------------------------------------------------------------------- 바디 ------------------------------------------------------------------------------------->
<body>

<%
DogDao dao = new DogDao();
List<DogVo> list = dao.select();
			
	
%>
<div id='main'>	

	<!-------------------------------------------- 중간 -------------------------------------------->
	<div id='garden'>
		<div id='box1'></div>
		<%@include file="garden_menu.jsp"%>

		<div id='box2'></div>
		<div id='text'>| 전체 |</div>
		<!-- 강아지 사진 시작-->
		
		<% for(DogVo vo : list){ %>
			<div class='group' id='group1'>
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_1.jsp"><img
						
						src="./img/dog_image/<%=vo.getDog_photo() %>" width='330px' height='330px'
						onmouseover="Show_Minibar(this, '견종: <%=vo.getDog_breed() %>' ,'성별 : <%=vo.getDog_gender() %>','나이 : <%=vo.getDog_age() %>','MBTI : <%=vo.getDog_mbti() %>' );"></a>
						<div id="MiniBar_title"></div>
					<p><%=vo.getDog_name() %></p>
				</div>
			</div>
		<% } %>
	</div>
	
	
	
<!-- 
<div class='group' id='group1'>
			<% for(DogVo vo : list){ %>		
				<div>
					<a href="main.jsp?inc=./dog_garden/dog_page/dog_page_small_1.jsp">
					<img src="./img/dog_image/<%=vo.getDog_photo() %> width='330px' height='330px'
						onmouseover="Show_Minibar(this, '견종: <%=vo.getDog_breed() %>' ,'성별 : <%=vo.getDog_gender() %>','나이 : <%=vo.getDog_age() %>','MBTI : <%=vo.getDog_mbti() %>' );"></a>
						<div id="MiniBar_title"></div>
							<p><%=vo.getDog_name() %></p>			
				</div>
			
		<% } %>
	</div>
 -->
	
	
	
	
	
</div>

	<script type="text/javascript">Show_Minibar()</script>
</body>
</html>