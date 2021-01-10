/**
 * 회원가입 java script
 */

// 회원가입 버튼을 눌렀을 때 메소드
function sendIt() {

	var f = document.myForm;

	// 아이디를 입력 안할 때
	str = f.userId.value;
	str = str.trim();
	if (!str) {
		alert("아이디를 입력하세요!");
		f.userId.focus();
		return;
	}
	f.userId.value = str;

	// 패스워드를 입력 안할 때
	str = f.userPwd.value;
	str = str.trim();
	if (!str) {
		alert("패스워드를 입력하세요!");
		f.userPwd.focus();
		return;
	}
	f.userPwd.value = str;

	// 이름을 입력 안할 때
	str = f.userName.value;
	str = str.trim();
	if (!str) {
		alert("이름을 입력하세요!");
		f.userName.focus();
		return;
	}
	f.userName.value = str;

	// 생일을 입력 안할 때
	str = f.userBirth.value;
	str = str.trim();
	if (!str) {
		alert("생일을 입력하세요!");
		f.userBirth.focus();
		return;
	}
	f.userBirth.value = str;

	// 전화번호를 입력 안할 때
	str = f.userTel.value;
	str = str.trim();
	if (!str) {
		alert("전화번호를 입력하세요!");
		f.userTel.focus();
		return;
	}
	f.userTel.value = str;

	// 질문을 입력 안할 때
	str = f.userAnswer.value;
	str = str.trim();
	if (!str) {
		alert("질문을 입력하세요!  ex) 00초등학교 ");
		f.userAnswer.focus();
		return;
	}
	f.userAnswer.value = str;

	// 성별을 입력 안할 때
	str = f.userGender.value;
	str = str.trim();
	if (!str) {
		alert("성별을 입력하세요!  ex) 남자, 여자");
		f.userGender.focus();
		return;
	}
	f.userGender.value = str;

	// 우편번호를 입력 안할 때
	str = f.zipcode.value;
	str = str.trim();
	if (!str) {
		alert("우편번호를 입력하세요 (아래 주소찾기 버튼을 누르세요)");
		f.zipcode.focus();
		return;
	}
	f.zipcode.value = str;

	// 주소를 입력 안할 때
	str = f.address1.value;
	str = str.trim();
	if (!str) {
		alert("주소를 입력하세요 (위에 주소찾기 버튼을 누르세요)");
		f.address1.focus();
		return;
	}
	f.address1.value = str;

	// 상세주소를 입력 안할 때
	str = f.address2.value;
	str = str.trim();
	if (!str) {
		alert("상세주소를 입력하세요");
		f.address2.focus();
		return;
	}
	f.address2.value = str;

	// 실행 됐을때 서블릿 메소드에 created_ok.do 부분 실행
	f.action = "/join/created_ok.do";
	f.submit();

}