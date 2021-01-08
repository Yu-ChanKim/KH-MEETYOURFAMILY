<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   request.setCharacterEncoding("UTF-8");
   String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" href="<%=cp %>/member/data/updated.css" type="text/css"/>

<script type="text/javascript" src="<%=cp %>/member/data/util.js"></script>
<script type="text/javascript">

  
</script>

</head>
<body>
  <div style="position: relative;">
  <div id="contents">
   <div class="member-contents">
    <div class="container-login">
       <div class="member-top-title">
         <h3 text align=center>My Page</h3>
         <span class="line"></span>
       </div>
           </br></br>
           
              <div id="bbs">
                 <form action="" method="post" name="myForm">
                    <div id="bbsCreated">
                       <div class="bbsCreated_bottomLine">
                             <dt>아이디</dt>
                             <dd>
                             ${sessionScope.customInfo.userId }
                             </dd>
                       </div>
                       
                       <div class="bbsCreated_bottomLine">
                             <dt>이름</dt>
                             <dd>
                             ${sessionScope.customInfo.userName }
                             </dd>
                       </div>
                       <div class="bbsCreated_bottomLine">
                             <dt>생일</dt>
                             <dd>
                             ${sessionScope.customInfo.userBirth }
                             </dd>
                       </div>
                       <div class="bbsCreated_bottomLine">
                             <dt>전화번호</dt>
                             <dd>
                             ${sessionScope.customInfo.userTel }
                             </dd>
                       </div>
                       <div class="bbsCreated_bottomLine">
                             <dt>질문대답</dt>
                             <dd>
                             ${sessionScope.customInfo.userAnswer }
                             </dd>
                       </div>
                       <div class="bbsCreated_bottomLine">
                             <dt>성별</dt>
                             <dd>
                             ${sessionScope.customInfo.userGender }
                             </dd>
                       </div>
                       <div class="bbsCreated_bottomLine">
                             <dt>우편번호</dt>
                             <dd>
                             ${sessionScope.customInfo.zipcode }
                             </dd>
                       </div>
                       <div class="bbsCreated_bottomLine">
                             <dt>도로주소</dt>
                             <dd>
                             ${sessionScope.customInfo.address1 }
                             </dd>
                       </div>
                       <div class="bbsCreated_bottomLine">
                             <dt>상세주소</dt>
                             <dd>
                             ${sessionScope.customInfo.address2 }
                             </dd>
                       </div>

                    </div>
                    
                 </form>
            </div>
         </div>
      </div>
   </div>
  </div>

</body>
</html>

