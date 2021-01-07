/**
 *  2020.12.24 garden hover javascript
 */

/*------------------------- 마당 미니바 기능 -------------------------*/
function Show_Minibar(obj, content1, content2, content3, content4) {
   $("#MiniBar_title").css({ "top": $(obj).offset().top + 190, "left": $(obj).offset().left + 331 }).html(content1 + "<br>" + content2 + "<br>" + content3 + "<br>" + content4);
   $("#MiniBar_title").show();
}

/*------------------------- 마당에서 상세보기 클릭 -------------------------*/
function detail(name) {
   var frm = document.frm_garden;
   frm.action = 'garden.do?siba=view';
   frm.dname.value = name;
   frm.submit();
}

/*------------------------- 마당 소/중/대 클릭 기능 -------------------------*/
function findView(str) {
   var frm = document.frm_garden;
   frm.action = 'garden.do?siba=page';
   frm.group.value = str;
   frm.submit();
}