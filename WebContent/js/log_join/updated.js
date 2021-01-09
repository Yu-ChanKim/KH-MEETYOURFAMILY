/**
 * 정보수정 수정버튼 이벤트 처리 javascript
 */

function sendIt() {

	var f = document.myForm;

	str = f.userPwd.value;
	str = str.trim();
	if (!str) {
		alert("패스워드를 입력하세요!");
		f.userPwd.focus();
		return;
	}
	f.userPwd.value = str;

	str = f.userBirth.value;
	str = str.trim();
	if (!str) {
		alert("생일을 입력하세요!");
		f.userBirth.focus();
		return;
	}
	f.userBirth.value = str;

	str = f.userTel.value;
	str = str.trim();
	if (!str) {
		alert("전화번호를 입력하세요!");
		f.userTel.focus();
		return;
	}
	f.userTel.value = str;

	f.action = "/join/updated_ok.do";
	f.submit();

}