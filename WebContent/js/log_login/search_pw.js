/**
 * 비밀번호 찾기 버튼 이벤트 javascript
 */

function sendIt() {
	var f = document.myForm;

	if (!f.userId.value) {
		alert("아이디를 입력하세요!");
		f.userId.focus;
		return;
	}

	if (!f.userAnswer.value) {
		alert("질문을 입력하세요!");
		f.userAnswer.focus;
		return;
	}

	f.action = "/join/searchpw_ok.do";
	f.submit();
}