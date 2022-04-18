<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/member/findPw" method="post">
	ID <input type="text" name="memId" id="memId"><br>
	<input type="button" value="찾기" onclick="findPw();">
</form>
<div id="spinnerDiv">
</div>
<script type="text/javascript" src="/resources/js/member/find_pw.js?ver=2"></script>
</body>
</html>