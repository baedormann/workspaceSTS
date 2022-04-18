<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
<!-- 부트스트랩 datepicker -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css" >
</head>
<body>
	<div class="row">
 		<form class="row g-3" action="/member/join" method="post" id="joinForm" onsubmit="return joinMember();">
			<c:choose>
				<c:when test="${joinType eq '1'}">
					<div class="col-12 text-center">학생 등록</div>
					<input type="hidden" name="memType" value="stu">
				</c:when>
				<c:when test="${joinType eq '2'}">
					<div class="col-12 text-center">직원 등록</div>
					<input type="hidden" name="memType" value="emp">
				</c:when>
				<c:when test="${joinType eq '3'}">
					<div class="col-12 text-center">관리자 등록</div>
					<input type="hidden" name="memType" value="admin">
				</c:when>
				<c:otherwise>
					<input type="hidden" id="nonType">
				</c:otherwise>
			</c:choose>
			
			<div class="col-12">
				<label for="inputPassword" class="form-label">비밀번호</label> 
				<input type="password" class="form-control" id="inputPassword" name="memPw" minlength="8" maxlength="16" 
					oninput="checkPw();" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required>
			</div>
			<div class="col-12">
				<label for="inputPasswordCheck" class="form-label">비밀번호확인</label> 
				<input type="password" class="form-control" id="inputPasswordCheck" name="memPwCheck" minlength="8" maxlength="16" 
					oninput="checkPw();" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required>
			</div>
			<div class="col-md-4">
				<label for="inputName" class="form-label">이름</label> 
				<input type="text" class="form-control" id="inputName" name="memName" pattern="^[가-힣a-zA-Z]+$" required>
			</div>
			<div class="col-md-7">
				<label for="inputEmail" class="form-label">이메일</label> 
				<input type="email" class="form-control" id="inputEmail" name="memEmail" required>
			</div>
			<div class="col-md-1">
				<label for="" class="form-label">&nbsp;</label> 
				<button type="button" class="btn btn-dark" onclick="checkEmail();">메일인증</button>
			</div>
			<div class="col-md-3">
				<label for="inputState" class="form-label">연락처</label> 
				<select id="inputState" class="form-select" name="memPhone">
					<option value="010" selected>010</option>
					<option value="011">011</option>
				</select>
			</div>
			<div class="col-md-4">
				<label for="" class="form-label">&nbsp;</label> 
				<input type="text" class="form-control" name="memPhone" maxlength="4" pattern="^[0-9]+$" required>
			</div>
			<div class="col-md-4">
				<label for="" class="form-label">&nbsp;</label> 
				<input type="text" class="form-control" name="memPhone" maxlength="4" pattern="^[0-9]+$" required>
			</div>
			<div class="col-md-1">
				<label for="" class="form-label">&nbsp;</label> 
				<button type="button" class="btn btn-dark d-block" onclick="checkPhone();">번호인증</button>
			</div>
			<div class="col-8">
				<label for="inputAddress" class="form-label">주소</label> 
				<input type="text" class="form-control bg-white" id="addr" onclick="execDaumPostcode();" 
						placeholder="도로명주소" name="memAddress" readonly required>
			</div>
			<div class="col-4 d-grid">
				<label for="" class="form-label">&nbsp;</label>
				<button type="button" class="btn btn-dark" onclick="execDaumPostcode();">우편번호</button>
			</div>
			<div class="col-12">
				<input type="text" class="form-control" id="inputAddress" placeholder="상세주소" name="memAddress" required>
			</div>
			<div class="col-md-4">
				<label for="inputGender" class="form-label">성별</label>
				<div class="form-control border-0">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="memGender" id="flexRadioDefault1" value="male" checked>
						<label class="form-check-label" for="flexRadioDefault1">남자</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="memGender" id="flexRadioDefault2" value="female">
					 	<label class="form-check-label" for="flexRadioDefault2">여자</label>
				 	</div>
			 	</div>
			</div>
			<div class="col-md-8">
				<label for="inputEmail" class="form-label">생일</label> 
				<input type="text" id="datePicker" class="form-control" required/>
			</div>
			<div class="mb-3">
			  <label for="formFile" class="form-label">회원사진</label>
			  <input class="form-control" type="file" id="formFile">
			</div>
			<div class="col-12 text-end">
				<button type="submit" class="btn btn-dark">회원등록</button>
			</div>
		</form>
	</div>
<!-- 다음 주소 api  -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> 
<!-- 부트스트랩 datepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.kr.min.js"></script>
<!-- 외부 script -->
<script type="text/javascript" src="/resources/js/member/join.js"></script>
</body>
</html>