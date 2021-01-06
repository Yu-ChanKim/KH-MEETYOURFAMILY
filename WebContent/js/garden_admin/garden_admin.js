/**
 * 2021.01.03 관리자 javascript
 */

function getID(id) {
   return document.getElementById(id);
}

var admin = function(){
   
   var btnModify = getID('btnModify');
   var btnSelect = getID('btnSelect');
   var btnUpdate = getID('btnUpdate');
   var btnDelete = getID('btnDelete');
   var btnInsert = getID('btnInsert');
   var btnPhoto1 = getID('btnPhoto1');
   var btnPhoto2 = getID('btnPhoto2');
   var btnPhoto3 = getID('btnPhoto3');
   var btnPhoto4 = getID('btnPhoto4');
   var btnSave = getID('btnSave');


   /*---------- select에서 추가 클릭 ----------*/
   if(btnInsert != null){
      btnInsert.onclick = function() {
          var frm = document.frm_admin_garden;
            frm.action = 'main.jsp?inc=./dog_garden_admin/insert.jsp'
           frm.submit();
       }
    }

   /*---------- 추가에서 저장 클릭 ----------*/
   if(btnSave != null){
      btnSave.onclick = function() {
         var frm = document.frm_admin_garden;
         var checkFlag =true;
         
         if(!frm.serial.checkValidity()){
            alert('SerialNo');
            checkFlag = false;
         } else if (!frm.group.checkValidity()){
            alert('분류')
            checkFlag = false;
         } else if (!frm.name.checkValidity()){
            alert('이름')
            checkFlag = false;
         } else if (!frm.breed.checkValidity()){
            alert('견종')
            checkFlag = false;
         } else if (!frm.gender.checkValidity()){
            alert('성별')
            checkFlag = false;
         } else if (!frm.age.checkValidity()){
            alert('나이')
            checkFlag = false;
         } else if (!frm.weight.checkValidity()){
            alert('무게')
            checkFlag = false;
         } else if (!frm.mbti.checkValidity()){
            alert('MBTI')
            checkFlag = false;
         } else if (!frm.mbti_char.checkValidity()){
            alert('MBTI성격')
            checkFlag = false;
         } else if (!frm.story.checkValidity()){
            alert('스토리')
            checkFlag = false;
         } else if (!frm.dog_photo1.checkValidity()){
            alert('사진')
            checkFlag = false;
         }
         
         if(checkFlag){
            frm.enctype = "multipart/form-data";
            frm.action = "dog_garden?admin=insert";
            frm.submit();
         }
      
         }
      }
   
   /*---------- 추가시 사진미리보기 ----------*/
    if(btnPhoto1 != null){
       btnPhoto1.onchange = function(ev){
           var tag = ev.srcElement; //이벤트 발생한 태그
            var url =tag.files[0];
             var reader = new FileReader();
             reader.readAsDataURL(url);
             reader.onload = function(e){
            var img = new Image();
            img.src = e.target.result;
            var photo = getID('dog_photo1');
            photo.src = img.src;
          }         
       }
    }

   if(btnPhoto2 != null){
       btnPhoto2.onchange = function(ev){
           var tag = ev.srcElement; //이벤트 발생한 태그
            var url =tag.files[0];
             var reader = new FileReader();
             reader.readAsDataURL(url);
             reader.onload = function(e){
            var img = new Image();
            img.src = e.target.result;
            var photo = getID('dog_photo2');
            photo.src = img.src;
          }         
       }
    }

   if(btnPhoto3 != null){
       btnPhoto3.onchange = function(ev){
           var tag = ev.srcElement; //이벤트 발생한 태그
            var url =tag.files[0];
             var reader = new FileReader();
             reader.readAsDataURL(url);
             reader.onload = function(e){
            var img = new Image();
            img.src = e.target.result;
            var photo = getID('dog_photo3');
            photo.src = img.src;
          }         
       }
    }

   if(btnPhoto4 != null){
       btnPhoto4.onchange = function(ev){
           var tag = ev.srcElement; //이벤트 발생한 태그
            var url =tag.files[0];
             var reader = new FileReader();
             reader.readAsDataURL(url);
             reader.onload = function(e){
            var img = new Image();
            img.src = e.target.result;
            var photo = getID('dog_photo4');
            photo.src = img.src;
          }         
       }
    }

   /*---------- 상세보기에서 삭제 클릭 ----------*/
   if(btnDelete !=null){
       btnDelete.onclick =function() {
         var frm = document.frm_admin_garden;
         frm.serial.disabled = false;
         frm.action="dog_garden?admin=delete";
         frm.submit();   
        }
    }



   /*---------- 상세보기에서 수정 클릭 ----------*/
   if(btnModify != null){
      btnModify.onclick = function(){
         var frm = document.frm_admin_garden;
         frm.serial.disabled = false;
         frm.action = "dog_garden?admin=modify";
         frm.submit();
      }      
   }
   
   /*---------- 상세보기 목록으로 가기 ----------*/
   if(btnSelect !=null){
         btnSelect.onclick = function() {
         location.href = "dog_garden?admin=select";
         }
    }

   /*---------- 상세보기 삭제 클릭 ----------*/
   
      
    /*---------- update 수정 클릭 ----------*/
   if(btnUpdate != null){
      btnUpdate.onclick = function(){
      var frm = document.frm_admin_garden;
	  frm.serial.disabled = false;
      frm.enctype = "multipart/form-data";
      frm.action = "dog_garden?admin=update";
      frm.submit();
      }
   }
   
    /*---------- update 수정 클릭 ----------*/
   
}

// 내용 클릭시 상세보기 화면
function view(serial){
   var frm = document.frm_admin_garden;
   frm.serial.value = serial;   
   frm.action = "dog_garden?admin=view";
   frm.submit();   
}