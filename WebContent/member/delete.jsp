<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<link rel="stylesheet" href="/css/log_join/join.css" type="text/css" />
<script>
	function member_delete() {

		var f = document.myForm;

		// 아이디를 입력 안할 때
		str = f.userId.value;
		str = str.trim();
		if (!str) {
			alert("로그인을 하시면 아이디가 입력됩니다");
			f.userId.focus();
			return;
		}
		f.userId.value = str;

		// 패스워드를 입력 안할 때
		str = f.userPwd.value;
		str = str.trim();
		if (!str) {
			alert("비밀번호를 입력하세요!");
			f.userPwd.focus();
			return;
		}
		f.userPwd.value = str;

		f.action = "/join/delete_ok.do";
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
							<h3>회원 탈퇴</h3>
							<span class="line"></span>
						</div>
						<div class="login-box">
							<h5>회원님의 비밀번호를 입력하고 버튼을 누르면 회원탈퇴가 완료됩니다.</h5>
							<div class="login-form">
								</br>
								<form action="" method="post" name="myForm">

									<div class="l-row l-input">
										<input type="text" id="userID" name="userId"
											value="${sessionScope.customInfo.userId }"
											readonly="readonly">
									</div>
									<div class="l-row l-input">
										<input type="password" id="userPassword" name="userPwd"
											placeholder="비밀번호를 입력하세요" required
											pattern='[a-zA-Z가-힣]{2,20}' />
									</div>
									</br> <input type="button" value="회원 탈퇴 하기" class="btn2"
										onclick="member_delete();">

									<c:if test="${!empty message }">
										<font color="red"><b>${message }</b></font>
									</c:if>


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