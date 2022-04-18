<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>
</head>
<body>
	<div class="row">
		<div class="col">
			<input class="form-control" type="text" name="memId" id="loginId"
				placeholder="아이디를 입력해주세요" aria-label="default input example"
				required>
		</div>
		<div class="col">
			<input class="form-control" type="password" name="memPw" id="loginPw"
				placeholder="비밀번호를 입력해주세요" aria-label="default input example"
				required>
		</div>
		<div class="col text-end">
			<button type="button" class="btn btn-dark" data-bs-toggle="modal"
				data-bs-target="#joinModal">회원가입</button>
			<button type="button" class="btn btn-dark" data-bs-dismiss="modal">취소</button>
			<button type="button" class="btn btn-dark" onclick="login();">로그인</button>
		</div>
	</div>
</body>
</html>