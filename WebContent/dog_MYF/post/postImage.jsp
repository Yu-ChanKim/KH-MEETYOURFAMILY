<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title>post_LIST</title>
	<link rel="stylesheet" href="/css/dog_MYF/noticeList.css">
	<link rel="stylesheet" href="/css/main.css" type="text/css">
	<style>
		#imgBox {
			position: relative;
			width: 100%;
			min-height: 800px;
			background-color: orange;
			text-align: center;
		}
		#postI {
			display: block;
			position: absolute;
			max-height: 800px;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
		}
	</style>
</head>

<body>

	<%@include file="/header.jsp"%>
	
	<div id="imgBox">
		<img id="postI" src="${imgFile}" />
	</div>

	<%@include file="/footer.jsp"%>

</body>

</html>