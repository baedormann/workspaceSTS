<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.bi-search{
	margin-left: 20px;
	cursor: pointer;
}
.brandSpan{
	display: inline-block;
	width: 20%;
	padding: 12px;
	text-align: center;
}
.navbar-brand{
	font-size: 25px;
	font-weight: bold;
	padding-bottom: 15px;
	line-height: 15px;
}
.brandAndSearchTable{
	margin: 0 auto;
}
.brandDiv{
	margin: 0 auto;
	text-align:center;
}
.bi-google{
	margin-right: -10px;
	width: 26px;
	height: 26px;
	margin-bottom: 10px;
	line-height: 30px;
}
.navbar-light{
	height: 120px;
}
.esipanSpan{
	height: 30px;
	font-size: 30px;
	line-height: 30px;
	
}
.searchBox{
	margin: 0px 10px 0px 10px;
}
</style>
</head>
<body>
<!-- As a link -->
<nav class="navbar navbar-light bg-light">
	<div class="brandDiv">
		<form action="/board/boardList" method="post" id="formTag">
			<table class="brandAndSearchTable">
				<tr>
					<td>
						<a class="navbar-brand" href="/board/boardList">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" style="color: #4285F4;" viewBox="0 0 16 16">
							  <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z"/>
							</svg>
							<span class="bi bi-google"><span class="esipanSpan" style="color: #EA4335;">e</span></span>
							<span class="bi bi-google"><span class="esipanSpan" style="color: #FBBC05;">s</span></span>
							<span class="bi bi-google"><span class="esipanSpan" style="color: #4285F4;">i</span></span>
							<span class="bi bi-google"><span class="esipanSpan" style="color: #34A853;">p</span></span>
							<span class="bi bi-google"><span class="esipanSpan" style="color: #EA4335;">a</span></span>
							<span class="bi bi-google"><span class="esipanSpan" style="color: #FBBC05;">n</span></span>
						</a>
					</td>
					<!-- <td><input type="text" class="form-control searchBox" name="searchValue"></td>
					<td>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16" onclick="formTag.submit();">
						  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
						</svg>
					</td> -->
				</tr>
			</table>
		</form>
	</div> 
</nav>

<!-- As a heading -->
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="#" style="color: black;">전체</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color: black;">공지사항</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#" style="color: black;">자유게시판</a>
  </li>
</ul>
</body>
</html>