<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<fmt:parseNumber var="pages" type="number" value="10" />
	<fmt:parseNumber var="pNo" type="number" value="${(param.pageNo == null) ? 1 : param.pageNo}" />
	<fmt:parseNumber var="firstPage" type="number" value="${pNo-((pNo-1) mod pages)}" />
	<fmt:parseNumber var="lastPage" type="number" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
	<fmt:parseNumber var="prevPage" type="number" value="${startPage-pages}" />
	<fmt:parseNumber var="nextPage" type="number" value="${startPage+pages}" />
	${firstPage}
</body>
</html>