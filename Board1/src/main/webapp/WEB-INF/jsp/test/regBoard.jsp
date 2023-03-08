<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div{
	margin-bottom: 10px;
}
</style>
</head>
<body>
<div class="container">
<form action="/regBoard.do" method="post">
	<div>
		<div>
			<span>제목  <input type="text" name="title"></span> <span> 작성자  <input type="text" name="writer"></span>
		</div>
		<div>내용 
			<textarea rows="7" cols="56" name="content">
			</textarea>
		</div>
	</div>
	<div style="width: 450px;">
		<span width="50%;">
			비밀번호 <input type="password" name="password">
		</span>
		<span style="text-align: right; width: 50%;">
			<input type="button" value="목록" onclick="location.href='/boardList.do'">
			<input type="submit" value="등록">
		</span>
	</div>
</form>
</div>
</body>
</html>