/**
 *  2020.12.24 garden hover javascript
 */

function Show_Minibar(obj,content1,content2,content3,content4)
{
    $("#MiniBar_title").css({"top":$(obj).offset().top + 190,"left":$(obj).offset().left + 331}).html(content1 +"<br>"+ content2 + "<br>"+ content3 + "<br>"+ content4); 
    $("#MiniBar_title").show();
}



function detail(name){
	var frm = document.frm_garden;
	frm.action = 'garden.do?siba=view';
	frm.dname.value=name;	
	frm.submit();	
}