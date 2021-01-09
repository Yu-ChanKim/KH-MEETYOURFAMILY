<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원수정</title>
<link rel="stylesheet" href="/css/log_join/updated.css" type="text/css" />
<script src="/js/log_join/updated.js"></script>
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
	                          <dt>패스워드</dt>
	                          <dd>
	                             <input type="password" name="userPwd" size="35" maxlength="20" class="booxTF"
	                             value="${dto.userPwd }" />
	                          </dd>
	                    </div>
	                    
	                    <div class="bbsCreated_bottomLine">
	                          <dt>생년월일</dt>
	                          <dd>
	                             <input type="date" name="userBirth" size="35" maxlength="50" class="boxTF"
	                             value="${dto.userBirth }" />
	                          </dd>
	                    </div>
	                    
	                    <div class="bbsCreated_bottomLine">
	                          <dt>전화번호</dt>
	                          <dd>
	                             <input type="text" name="userTel" size="35" maxlength="50" class="boxTF"
	                             value="${dto.userTel }" />
	                          </dd>
	                    </div>
                    </div>
                    
                    </br>
                                                           
                    </br>
                    
                  <div class="login-bottom">
	                <p >
	                	*수정완료시 자동 로그아웃 됩니다.*
	                </p>
	              </div>
                    
                    <div id="bbsCreated_footer">
                     <input type="button" value="수정하기" class="btn2" onclick="sendIt()"/>
	                 <input type="button" value="수정취소" class="btn2"
	                 	onclick="javascript:location.href='/main.jsp';"/>   
                  </div>
                 </form>
            </div>
         </div>
      </div>
   </div>
  </div>

</body>
</html>



