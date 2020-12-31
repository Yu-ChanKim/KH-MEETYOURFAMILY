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
      <div id='text'>| 소형견 |</div>
      <!-- 강아지 사진 시작-->
      
      <form name="frm_garden" method='post'>
      	<input name='dname' type='hidden' value='${param.dname }'>  
      </form>    
      
      
      <%  DogDao dao = new DogDao();
            List<DogVo> list = dao.select();%>
         <div id='main'>
            <table>
               <tr>
<%   for(DogVo vo : list) {   
               if(vo.getDog_group().equals("소")) {%>
                  <td>                   
                     <img src="./img/dog_image/<%=vo.getDog_photo1()%>" onclick='detail(name)' name='<%=vo.getDog_name()%>' width='330px' height='330px'
                        onmouseover="Show_Minibar(this, '견종      : <%=vo.getDog_breed() %>'
                                               , '성별      : <%=vo.getDog_gender() %>'
                                               , '나이      : <%=vo.getDog_age() %>'
                                               , 'MBTI : <%=vo.getDog_mbti() %>' );">
                                                                    
                     <div id="MiniBar_title"></div>
                     <p><%=vo.getDog_name() %></p>
                  </td>
      <% if(list.indexOf(vo)%3 == 2) {%>
               </tr>
               <tr>
   <%  }
               }
   } %>            
   </tr>
            </table>
         </div>
         
   </div>


   <script type="text/javascript">Show_Minibar()</script>
</body>
</html>