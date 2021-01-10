<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MYF : 로그아웃</title>
<link rel="stylesheet" href="/css/log_join/join.css" type="text/css" />
<script src="/js/log_login/logout.js"></script>
</head>
<body>
	<div class="container">
		<div style="position: relative;">
			<div id="contents">
				<div class="member-contents">
					<div class="container-login">
						<div class="member-top-title">
							<h3>로그아웃을 완료하려면</h3>
							<span class="line"></span>
						</div>
						<div class="login-box">
							<div class="login-form">
							<h4>아래 버튼을 클릭하세요</h4>
								<form action="" method="post" name="myForm">

									<input type="button" value="로그아웃" class="btn2"
										onclick="logout();">
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