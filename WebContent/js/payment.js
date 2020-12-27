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
			var win = window.open('main.jsp?inc=./dog_garden/payment/alert_test.jsp', 'win', 'width=1000px, height=1000px, left=300px, top=300px');
				
				
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