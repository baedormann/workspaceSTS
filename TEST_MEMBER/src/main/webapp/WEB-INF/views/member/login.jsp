<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	width: 300px;
	margin: 0 auto;
	font-family: MinSans-Medium;
}
.subtitleDiv{
	font-size: 20px;
	margin-top: 20px;
	text-align: center;
}
input[type="text"], input[type="password"]{
	font-family: MinSans-Medium;
	margin-top: 3px;
	width: 97%;
	height: 26px;
	border: 1px solid #d0d0d0;
	border-radius: 4px;
}
.loginBtn{
	margin-top: 20px;
	text-align: center;
}
input[type="submit"]{
	width: 120px;
	height: 30px;
	font-family: MinSans-Medium;
	border: 1px solid #daab05;
	background-color: #Fccd05;
	border-radius: 4px;
	cursor: pointer;
}
.idDiv, .pwDiv{
	margin-top: 20px;
}
</style>
</head>
<body>
<div class="container">
	<form action="/member/login" method="post">
		<div class="subtitleDiv">Login</div>
		<div class="idDiv">
			<span>ID</span><br> 
			<span><input type="text" name="memberId" placeholder="input ID"></span>
		</div>
		<div class="pwDiv">
			<span>PASSWORD</span><br>
			<span><input type="password" name="memberPassword" placeholder="input Password"></span>
		</div>
		<div class="loginBtn">
			<input type="submit" value="Login">
		</div>
	</form>
</div>
</body>
</html>