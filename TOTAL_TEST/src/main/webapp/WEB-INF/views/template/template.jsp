<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style type="text/css">
@font-face {
    font-family: 'OTWelcomeRA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
.menuDiv{
	width: 900px;
	height: 50px;
	margin: 0 auto;
	text-align: center;
}
.bodyDiv{
	width: 900px;
	height: 100%;
	margin: 0 auto;
	text-align: center;
	padding-top: 20px;
}
body {
	font-family: OTWelcomeRA;
}
</style>
</head>
<body>
<div class="menuDiv">
	<tiles:insertAttribute name="menu"/>
</div>
<div class="bodyDiv">
	<tiles:insertAttribute name="body"/>
</div>
</body>
</html>