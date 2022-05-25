<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	text-align: center;
}
</style>
</head>
<body>
<div style="text-align: left;">성적관리화면</div>
<div class="container">
	<table class="table">
		<colgroup>
			<col>
			<col>
			<col>
			<col>
			<col>
			<col>
			<col>
		</colgroup>
		<thead>
			<tr>
				<td>단과대학명</td>
				<td>
					<select name="collNo" class="form-select">
						<option>전체</option>
						<c:forEach items="${collList }" var="collInfo">
							<option value="${collInfo.collNo }">${collInfo.collName }</option>
						</c:forEach>
					</select>
				</td>
				<td>학과명</td>
				<td>
					<select name="deptNo" class="form-select">
						<option>전체</option>
						<c:forEach items="${deptList }" var="deptInfo">
							<option value="${deptInfo.deptNo }">${deptInfo.deptName }</option>
						</c:forEach>
					</select>
				</td>
				<td>강의명</td>
				<td>
					<input type="text" placeholder="강의명" name="memName" class="form-control">
				</td>
				<td>
					<input type="button" class="btn btn-primary" value="검색" onclick="aaa();">
				</td>
			</tr>
		</thead>
	</table>
	<div class="contentDiv">강의를 검색하세요</div>
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
				<td>강의번호</td>
				<td>강의명</td>
				<td>담당교수</td>
				<td>대학</td>
				<td>전공</td>
				<td>학점</td>
				<td>최대인원</td>
			</tr>
		</thead>	
		<tbody>
			<c:forEach items="${lecList }" var="lecInfo">
				<tr>
					<td>${lecInfo.lecNo }</td>
					<td>${lecInfo.lecName}</td>
					<td>${lecInfo.lecPr}</td>
					<td>대학</td>
					<td>${lecInfo.deptNo }</td>
					<td>${lecInfo.lecScore}</td>
					<td>${lecInfo.maxNum}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script type="text/javascript" src="/resources/js/admin/score_manage.js"></script>
</body>
</html>