<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="/member/data/login.css" type="text/css"/>

<title>MYF : 로그인</title>

<script>
	function login(){
		var f = document.myForm;
		
		if(!f.userId.value){
			alert("아이디를 입력하세요!");
			f.userId.focus;
			return;
		}
		
		if(!f.userPwd.value){
			alert("패스워드를 입력하세요!");
			f.userPwd.focus;
			return;
		}
		
		//로그인이 됐을 때 넘어가는 페이지
		f.action="/join/login_ok.do";
		f.submit();
	}
</script>
</head>

<body>
<div class="container">
 <div style="position: relative;">
  <div id="contents">
   <div class="member-contents">
    <div class="container-login">
     <div class="member-top-title">
      <h3>로그인</h3>
       <span class="line"></span>
     </div>   
     <div class="login-box">
      <div class="login-form">
		<form action="" method="post" name="myForm">
			<table align="center" cellpadding="0" cellspacing="0">
			
				<div class="l-row l-input">
					<input type="text" name="userId" maxlength="10" size="15" placeholder="사용자 아이디"/>
				</div>
				
				<div class="l-row l-input">
					<input type="password" name="userPwd" maxlength="10" size="15" placeholder="사용자 비밀번호"/>
				</div>
				
				
				<div>
					<input type="button" value="로그인" class="btn2" onclick="login();">
					
					<span class="line"></span>

				</div>
				
				
				<div class="find">
		          <a class="button id-find" href="/main.jsp?inc=./member/searchid.jsp">
		            <span>아이디 찾기</span>
		          </a>
		          
		          <a class="button pw-find" href="/main.jsp?inc=./member/searchpw.jsp">
		            <span>비밀번호 찾기</span>
		          </a>
		          
		        </div>
		        
		         <div class="login-bottom">
                <p class="font-nsr title-xsmall6 color-grey9">
                 	    가입시 동의하신 <a class="color-peach b" href="/main.jsp?inc=/member/joinAgree.jsp">이용약관동의,</a>
                     		<a class="color-peach b" href="/main.jsp?inc=/member/privacyAgree.jsp">개인정보처리방침</a>에 따라 관리됩니다.
                </p>
              </div>
				
				
				<c:if test="${!empty message }">
				<tr height="30">
					<td colspan="2" align="center">
					<font color="red"><b>${message }</b></font> 
					</td>
				</tr>

		<!-- 	<tr height="1"><td colspan="2" bgcolor="#cccccc"></td></tr>
				<tr height="30">
					<td colspan="2" align="center">
					<a href=" /join/searchpw.do" >비밀번호 찾기</a>
					</td>
				</tr>
				<tr height="1"><td colspan="2" bgcolor="#cccccc"></td></tr>
				-->
				</c:if>
			</table>
		</form>
      </div>
     </div>
    </div>
   </div>
  </div>
 </div>
</div>
</body>

</html>

