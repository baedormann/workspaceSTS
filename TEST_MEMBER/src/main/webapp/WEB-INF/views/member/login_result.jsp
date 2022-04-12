<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${not empty loginResult }">
		<input type="hidden" id="loginInfo" value="notEmpty">
	</c:when>
	<c:otherwise>
		<input type="hidden" id="loginInfo" value="empty">
	</c:otherwise>
</c:choose>
<script type="text/javascript" src="/resources/js/login_result.js?ver=2"></script>
</body>
</html>