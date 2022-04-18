<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
thead > tr > td{
	/* border: 1px solid #DEE2E6; */
}
thead > tr > td:first-child {
	border-left: 1px solid #DEE2E6;
}
thead > tr > td:last-child {
	border-right: 1px solid #DEE2E6;
}
</style>
</head>
<body>
<div class="container">
	<div style="text-align: left; margin-left: 5px; font-size: 20px; margin-bottom: 3px;">사원목록</div>
	<div class="tableDiv">
		<table class="table table-hover">
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
					<td rowspan="2" valign="middle">No.</td>
					<td colspan="4" style="border-left: 1px solid #DEE2E6; border-right: 1px solid #DEE2E6;">사원정보</td>
					<td colspan="2">부서정보</td>
				</tr>
				<tr>
					<td>사원명</td>
					<td>연락처</td>
					<td>성별</td>
					<td>나이</td>
					<td style="border-left: 1px solid #DEE2E6;">부서명</td>
					<td>지역</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${empList }" var="empInfo">
					<tr>
						<td>${empInfo.empNum }</td>
						<td>${empInfo.empName }</td>
						<td>${empInfo.empTell }</td>
						<td>${empInfo.empGender }</td>
						<td>${empInfo.empAge }</td>
						<td>${empInfo.deptName }</td>
						<td>${empInfo.deptLocation }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>