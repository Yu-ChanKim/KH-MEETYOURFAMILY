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
<title>회원수정</title>

<link rel="stylesheet" href="<%=cp %>/member/data/created.css" type="text/css"/>

<script type="text/javascript" src="<%=cp %>/member/data/util.js"></script>
<script type="text/javascript">

   function sendIt(){
      
      var f= document.myForm;
      
      str=f.userPwd.value;
      str=str.trim();
      if(!str){
         alert("패스워드를 입력하세요!");
         f.userPwd.focus();
         return;
      }
      f.userPwd.value=str;
      
      str=f.userBirth.value;
      str=str.trim();
      if(!str){
         alert("생일을 입력하세요!");
         f.userBirth.focus();
         return;
      }
      f.userBirth.value=str;
      
      str=f.userTel.value;
      str=str.trim();
      if(!str){
         alert("전화번호를 입력하세요!");
         f.userTel.focus();
         return;
      }
      f.userTel.value=str;
      
      f.action="<%=cp%>/join/updated_ok.do";
      f.submit();
      
   }
</script>

</head>
<body>
  <div style="position: relative;">
  <div id="contents">
   <div class="member-contents">
    <div class="container-login">
       <div class="member-top-title">
         <h3>회원정보수정</h3>
         <span class="line"></span>
       </div>
           
              <div id="bbs">
                 <form action="" method="post" name="myForm">
                    <div id="bbsCreated">
                       <div class="bbsCreated_bottomLine">
                          <dl>
                             <dt>아이디</dt>
                             <dd>
                             ${sessionScope.customInfo.userId }
                             </dd>
                          </dl>
                       </div>
                       
                       <div class="bbsCreated_bottomLine">
                          <dl>
                             <dt>이름</dt>
                             <dd>
                             ${sessionScope.customInfo.userName }
                             </dd>
                          </dl>
                       </div>
                       
                       <div class="bbsCreated_bottomLine">
                          <dl>
                             <dt>패스워드</dt>
                             <dd>
                                <input type="password" name="userPwd" size="35" maxlength="20" class="booxTF"
                                value="${dto.userPwd }" />
                             </dd>
                          </dl>
                       </div>
                       
                       <div class="bbsCreated_bottomLine">
                          <dl>
                             <dt>생년월일</dt>
                             <dd>
                                <input type="date" name="userBirth" size="35" maxlength="50" class="boxTF"
                                value="${dto.userBirth }" />
                                [YYYY-MM-DD]
                             </dd>
                          </dl>
                       </div>
                       
                       <div class="bbsCreated_bottomLine">
                          <dl>
                             <dt>전화번호</dt>
                             <dd>
                                <input type="text" name="userTel" size="35" maxlength="50" class="boxTF"
                                value="${dto.userTel }" />
                             </dd>
                          </dl>
                       </div>
                    </div>
                    
                    <div id="bbsCreated_footer">
                     <input type="button" value="수정하기" class="btn2" onclick="sendIt()"/>
                  <input type="button" value="수정취소" class="btn2"
                  onclick="javascript:location.href='<%=cp%>/main.jsp';"/>   
                  </div>
                 </form>
            </div>
         </div>
      </div>
   </div>
  </div>

</body>
</html>


