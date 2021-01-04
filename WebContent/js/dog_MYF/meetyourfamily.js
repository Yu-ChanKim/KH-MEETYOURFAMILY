const nDetail = "/dog_MYF/noticeDetail";
const nDetailA = "/dog_MYF/noticeDetail/Admin";
const nList = "/dog_MYF/noticeList";
const nListA = "/dog_MYF/noticeList/Admin";
const nRegA = "/dog_MYF/noticeReg/Admin";

const pDetail = "/dog_MYF/postDetail";
const pDetailA = "/dog_MYF/postDetail/Admin";
const pList = "/dog_MYF/postList";
const pListA = "/dog_MYF/postList/Admin";
const pRegA = "/dog_MYF/postReg/Admin";

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
	var del = [deleteId];
	frm.appendChild(addFormData("deleteId",del));
	frm.appendChild(addFormData("deleteBtn","del"));
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