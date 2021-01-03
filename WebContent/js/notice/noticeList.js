const nDetail = "/dog_notice/noticeDetail";
const nDetailA = "/dog_notice/noticeDetail_Admin";
const nList = "/dog_notice/noticeList";
const nListA = "/dog_notice/noticeList_Admin";
const nRegA = "/dog_notice/noticeReg_Admin";

function goDetailPage(s, id)
{
	var frm = document.createElement("form");
	frm.method = "post"
	frm.action = s;
	frm.appendChild(addFormData("id",id));
	document.body.appendChild(frm);
	frm.submit();	
}

function paging(s, pageNo, category, keyword)
{
	var frm = document.createElement("form");
	frm.method = "post"
	frm.action = s;
	frm.appendChild(addFormData("pageNo",pageNo));
	frm.appendChild(addFormData("category",category));
	frm.appendChild(addFormData("keyword",keyword));
	document.body.appendChild(frm);	
	frm.submit();   
}

function deleting(deleteId)
{
	var frm = document.createElement("form");
	frm.method = "post"
	frm.action = nListA;
	frm.appendChild(addFormData("deleteId",deleteId));
	frm.appendChild(addFormData("deletebtn","btn"));
	document.body.appendChild(frm);	
	frm.submit();
}

function addFormData(name, value)
{
    var elmt = document.createElement("input");
    elmt.setAttribute("type", "hidden");
    elmt.setAttribute("name", name);
    elmt.setAttribute("value", value);
    return elmt;
}

function goPage(s)
{
	var frm = document.createElement("form");
	document.body.appendChild(frm);
	frm.method = "post";
	frm.action = s;
	frm.submit();
}