<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face {
    font-family: 'MinSans-Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.container{
	width: 90%;
	margin: 0 auto;
	text-align: center;
	font-family: MinSans-Medium;
}
.subtitleDiv{
	font-size: 20px;
	margin-top: 20px;
	text-align: center;
}
.memberUtilDiv{
	margin-top: 20px;
	text-align: right;
}
.logoutSpan{
	margin-left: 10px;
	cursor: pointer;
}
</style>
</head>
<body style="font-family: MinSans-Medium;">
<div class="container">
	<div class="memberUtilDiv">
		<c:choose>
			<c:when test="${not empty sessionScope.loginInfo.memberName }">
				<span>${sessionScope.loginInfo.memberName }님 반갑습니다.</span>
				<span class="logoutSpan" onclick="location.href='/member/logout'">logout</span>
			</c:when>
			<c:otherwise>
				<span class="loginSpan" onclick="location.href='/member/login'">login</span>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="subtitleDiv">
		관리자 페이지입니다.
	</div>
</div>
</body>
</html>