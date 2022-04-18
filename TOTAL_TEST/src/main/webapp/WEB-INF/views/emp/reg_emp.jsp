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
	width: 70%;
}
.textDiv{
	text-align: left;
	padding-left: 6px;
}
</style>
</head>
<body>
<div class="container">
	<div style="text-align: left; margin-left: 5px; font-size: 20px; margin-bottom: 3px;">부서등록</div>
	<div class="tableDiv">
		<form action="/emp/regEmp" method="post">
			<table class="table">
				<colgroup>
					<col width="40%">
					<col width="20%">
					<col width="40%">
				</colgroup>
			<tbody>
				<tr>
					<td colspan="3">
						<div class="textDiv">사원명</div>
						<input type="text" class="form-control" name="empName">
					</td>
				</tr>
				<tr>
					<td>
						<div class="textDiv">직급</div>
						<select name="empRank" class="form-select">
							<option value="사원">사원</option>
							<option value="대리">대리</option>
							<option value="과장">과장</option>
							<option value="부장">부장</option>
						</select>
					</td>
					<td></td>
					<td>
						<div class="textDiv">부서</div>
						<select name="deptNum" class="form-select">
							<c:forEach items="${deptList }" var="deptInfo">
								<option value="${deptInfo.deptNum }">${deptInfo.deptName }</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<div class="textDiv">성별</div>
						<div class="row">
							<div class="col-2"></div>
							<div class="col-4">
								<input type="radio" name="empGender"  class="form-check-input" value="남성">남
							</div>
							<div class="col-4">
								<input type="radio" name="empGender"  class="form-check-input" value="여성">여
							</div>
							<div class="col-2"></div>
						</div>
					</td>
					<td></td>
					<td>
						<div class="textDiv">나이</div>
						<input type="number" class="form-control" name="empAge" min="1" max="70" value="20">
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="textDiv">연락처</div>
						<div class="row">
							<div class="col-4">
								<input type="text" class="form-control" name="empTells">
							</div>
							<div class="col-4">
								<input type="text" class="form-control" name="empTells">
							</div>
							<div class="col-4">
								<input type="text" class="form-control" name="empTells">
							</div>
						</div>
					</td>
				</tr>
			</tbody>
			</table>
			<input type="submit" class="btn btn-primary" value="등록">
		</form>
	</div>
</div>
</body>
</html>