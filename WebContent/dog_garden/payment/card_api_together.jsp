<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
   .swal-footer {
      text-align: center;
   }
</style>
</head>
<body>
   <%
      int totalPrice = 50000;
   %>
   <script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp44956881'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'Meet Your Family',
            amount : <%=totalPrice%>,  //가격
          
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        
                        
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
              
                $().ready(function () {                   
                        swal({
                           icon: "success",
                            title: "함께 해주셔서 감사합니다.",
                            text: "입양 절차 소개로 이동합니다.",
                            button: "입양 절차 소개로 이동",
                        }) .then((value) => {
                           if(value) {
                              location.href ='main.jsp?inc=./dog_introduce/procedure.jsp'
                           }
                        })                   
                });
            } else {
                //실패시 이동할 페이지
               $().ready(function () {                   
                        swal({
                            icon: "error",
                            title: "결제가 취소 되었습니다.",                          
                            button: "확인",
                        }) .then((value) => {
                           if(value) {
                              location.href ='garden.do?siba=page&dname=&group=전체'
                           }
                        })                   
                });
            }
        });
        
    });
</script>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
</body>
</html>