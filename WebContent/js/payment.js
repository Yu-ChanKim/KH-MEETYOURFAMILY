/**
 *    2020.12.25 payment javascript
 */
function getID(id) {
    return document.getElementById(id)
 }
 
 
 var payment = function() {    
    
    
   var btn_garden = getID('btn_garden');
   var btn_together_out = getID('btn_together_out');  

   if(btn_garden != null) {
      btn_garden.onclick = function(){
         location.href = "garden.do?siba=page&dname=&group=전체";
      }      
   }


   if(btn_together_out !=null) {
   btn_together_out.onclick = function(){
          $().ready(function () {
                swal({
                    icon: "error",
                    title: "회원만 이용 가능합니다.",
                    text: "회원가입 후 진행해주세요.",
                    button: "회원가입/로그인 이동",
                }) .then((value) => {
                   if(value) {
                      location.href ='./main.jsp?inc=./dog_login/login.jsp'
                   }
                })
            });
   }
}
         
}

function together(){
      
      var frm = document.frm_garden;   
   
      var win = window.open('./dog_garden/payment/together.jsp', 'win', 'width=700, height=900, left=600');
      
      win.onbeforeunload = function(){       
            frm.action = 'garden.do?siba=together';
         frm.submit();   
      }   
}


function love(){
   var frm = document.frm_garden;
   
    var win = window.open('./dog_garden/payment/love.jsp', 'win', 'width=700, height=900, left=600');
 
   win.onbeforeunload = function(){       
      if(frm.price.value != ''){
         frm.action = 'garden.do?siba=love';
         frm.submit();
      }
   }   

}
