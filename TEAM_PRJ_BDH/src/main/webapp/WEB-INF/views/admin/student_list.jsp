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
학생조회화면
<!-- 학생 검색 기능 -->
<div class="container">
<table class="table">
	<colgroup>
		<col>
		<col>
		<col>
		<col>
		<col>
	</colgroup>
	<tr>
		<td>대학</td>
		<td>
			<select name="collNo" class="form-select">
				<option>전체</option>
				<c:forEach items="${collList }" var="collInfo">
					<option value="${collInfo.collNo }">${collInfo.collName }</option>
				</c:forEach>
			</select>
		</td>
		<td>학년</td>
		<td>
			<select name="stuYear" class="form-select">
				<option>전체</option>
				<option value="1">1학년</option>
				<option value="2">2학년</option>
				<option value="3">3학년</option>
				<option value="4">4학년</option>
				<option value="5">5학년</option>
				<option value="6">6학년</option>
				<option value="7">7학년</option>
			</select>
		</td>
		<td rowspan="3">
			<input type="submit" class="btn btn-primary" value="검색">
		</td>
	</tr>
	<tr>
		<td>전공</td>
		<td>
			<select name="deptNo" class="form-select">
				<option>전체</option>
				<c:forEach items="${deptList }" var="deptInfo">
					<option value="${deptInfo.deptNo }">${deptInfo.deptName }</option>
				</c:forEach>
			</select>
		</td>
		<td>학적</td>
		<td>
			<select name="stuStatus" class="form-select">
				<option>전체</option>
				<option value="재학">재학</option>
				<option value="휴학">휴학</option>
				<option value="복학승인대기">복학승인대기</option>
				<option value="제적">제적</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>성명</td>
		<td colspan="3"><input type="text" placeholder="이름" name="memName" class="form-control"></td>
	</tr>
</table>
<!-- 학생 목록 -->
<table class="table">
	<colgroup>
		<col>
		<col>
		<col>
		<col>
		<col>
		<col>
	</colgroup>
	<thead>
		<tr>
			<td>학번</td>
			<td>학년</td>
			<td>이름</td>
			<td>소속 대학</td>
			<td>전공</td>
			<td>학적 상태</td>
		</tr>
	</thead>	
	<tbody>
		<c:forEach items="${studentList }" var="studentInfo">
			<tr>
				<td>${studentInfo.stuNo }</td>
				<td>${studentInfo.stuYear }</td>
				<td>${studentInfo.baedohunMemberVO.memName }</td>
				<td>${studentInfo.baedohunDeptVO.baedohunCollVO.collName }</td>
				<td>${studentInfo.baedohunDeptVO.deptName }</td>
				<td>${studentInfo.stuStatus }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</body>
</html>