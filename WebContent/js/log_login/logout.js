/**
 *  로그아웃 버튼이벤트 처리 javascript
 */

function logout() {

	var f = document.myForm;
	// 로그아웃 버튼 눌렀을 때 넘어가는 버튼
	f.action = "/join/logout.do";
	f.submit();
}