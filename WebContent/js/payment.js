/**
 * 	2020.12.25 payment javascript
 */

function getID(id) {
 	return document.getElementById(id)
 }
 
 
 var payment = function() {
 	
 	let url = 'main.jsp?inc=./dog_garden/';
 	
 	
 	var btn_garden = getID('btn_garden');
 	var btn_together = getID('btn_together');
 	var btn_love = getID('btn_love');	

	if(btn_garden != null) {
		btn_garden.onclick = function(){
			location.href = url + 'dog_garden.jsp';
		}		
	}
	
	if(btn_together != null ){
		btn_together.onclick = function(){		
		
		
			/* 비회원일 시
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
    
			*/
			
			// 회원일 시
			var win = window.open('main.jsp?inc=./dog_garden/payment/together.jsp', 'win', 'width=1000px, height=1000px, left=300px, top=300px');
		
			win.onbeforeunload = function(){
				location.href ='main.jsp?inc=./dog_garden/payment/card_api.jsp'	;
			}
		}		
	}

	if(btn_love != null ){
		btn_love.onclick = function(){
			var win = window.open('main.jsp?inc=./dog_garden/payment/love.jsp', 'win', 'width=1000px, height=1000px, left=300px, top=300px');
								
		}
	}

	/*
   if(btnDelete != null){
      btnDelete.onclick = function(){
         var frm = document.frm_member;
        // var pwd = prompt("회원정보를 삭제하시려면 암호를 입력하세요.");
        var win = window.open('./member/input_pwd.jsp', 'win', 'width=400px, height=100px, left=300px, top=300px');
        
        win.onbeforeunload = function(){
         if(frm.pwd.value != ''){
            frm.action = 'member.do?job=delete';
            //frm.pwd.value = pwd;
            frm.mid.disabled=false;
            frm.submit();
         }            
        }
      }
   }
*/
}



