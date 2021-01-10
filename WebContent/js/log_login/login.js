/**
 * 로그인 입력 텍스트 및 servlet이동 javascript
 */

function login() {
	var f = document.myForm;

	if (!f.userId.value) {
		alert("아이디를 입력하세요!");
		f.userId.focus;
		return;
	}

	if (!f.userPwd.value) {
		alert("패스워드를 입력하세요!");
		f.userPwd.focus;
		return;
	}

	// 로그인이 됐을 때 넘어가는 페이지
	f.action = "/join/login_ok.do";
	f.submit();
}