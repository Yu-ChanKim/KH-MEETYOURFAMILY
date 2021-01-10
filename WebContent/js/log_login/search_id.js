/**
 *  아이디 찾기 버튼 이벤트 javascript
 */

function sendIt() {
	var f = document.myForm;

	// 성명을 입력 안했을 때
	if (!f.userName.value) {
		alert("성명을 입력하세요!");
		f.userName.focus;
		return;
	}

	// 질문답변을 입력 안했을 때
	if (!f.userAnswer.value) {
		alert("질문답변을 입력하세요!");
		f.userAnswer.focus;
		return;
	}

	// 다 입력 했을 때 MemberServlet.java파일의 searchpw_ok.do가 들어간 if문 실행
	f.action = "/join/searchid_ok.do";
	f.submit();
}