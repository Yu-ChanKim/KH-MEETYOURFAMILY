<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>alert_test</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
//-------------------------------------- 버전 2 --------------------------------------

$().ready(function () {
    $("#alertStart1").click(function () {
        Swal.fire({
            icon: 'error',
            title: '회원만 이용 가능합니다..',
            text: '회원가입 후 진행해주세요.',           
        });
    });
});


$().ready(function () {
     $("#alertStart2").click(function () {
         Swal.fire({
             icon: 'success',
             title: '소중한 후원 감사합니다.',
             text: '',
         });
     });
});

$().ready(function () {
    $("#alertStart3").click(function () {
        Swal.fire({
            icon: 'warning',
            title: '함께 할 수 없습니다.',
            text: '고객님과 매칭된 강아지가 아닙니다.',
        });
    });
});

$().ready(function () {
    $("#alertStart4").click(function () {
        Swal.fire({
            icon: 'success',
            title: '함께 해주셔서 감사합니다.',
            text: '입양 절차 소개로 이동합니다.',
        });
    });
});

</script>
</head>
<body>
   <button id="alertStart1">함께하기 비회원 경고창</button>
   <button id="alertStart2">사랑주기 후원 감사합니다.</button>
   <button id="alertStart3">함께하기 회원 매칭된 강아지 아닐 시 경고창</button>
   <button id="alertStart4">함께하기 회원 완료 시 입양절차 설명</button>

</body>

</html>