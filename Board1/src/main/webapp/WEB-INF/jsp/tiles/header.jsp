<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
header {
    width: 100;
    height: 80px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}
header > h2 {
	margin-left: 20px;
}
header > nav {
	width:120px;
	height:100%;
}
header ul {
	width:100%;
	height: 100%;
	display: flex;
	justify-content: space-between;
}
header ul > li {
	height: 100%;
	display: flex;
	align-items: center;
}
ul {
    list-style: none;
}
.page{
	width: 90%;
	margin: 0 auto;
}
a{
	color: black;
	text-decoration: none;
}


</style>
</head>
<body>
	<div class="page">
		<header>
			<h2><a href="/boardList.do">엔</a></h2>
			<nav>
				<ul>
					<li><a href="/loginForm.do">로그인</a></li>
					<li><a href="/joinForm.do">회원가입</a></li>
				</ul>
			</nav>
		</header>
	</div>
	<!-- <span onclick="home();" class="logoSpan">로고</span>
	<span class="loginJoinSpan">
		<span onclick="login();" class="loginSpan">로그인</span>
		<span onclick="join();" class="joinSpan">회원가입</span>
	</span> -->
</body>
</html>