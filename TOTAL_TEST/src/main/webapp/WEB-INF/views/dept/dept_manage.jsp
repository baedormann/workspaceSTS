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
.inputDiv{
	margin: 0 auto;
	margin-bottom: 30px;
}
.tableDiv{
	text-align: center;
	margin: 0 auto;
}
</style>
</head>
<body>
<div class="container">
	<div class="inputDiv">
		<div style="text-align: left; margin-left: 5px; font-size: 20px; margin-bottom: 3px;">부서등록</div>
			<div class="formDiv">
				<form action="/dept/regDept" method="post">
					<div class="row">
						<div class="col-7">
							<input type="text" placeholder="Department name" class="form-control" name="deptName">
						</div>
						<div class="col-3">
							<select name="deptLocation" class="form-select">
								<option value="서울" selected>서울</option>
								<option value="대전">대전</option>
								<option value="대구">대구</option>
								<option value="부산">부산</option>
								<option value="인천">인천</option>
							</select>
						</div>
						<div class="col-2">
							<input type="submit" value="등록" class="btn btn-primary">
						</div>
					</div>
				</form>
			</div>
	</div>
	<div class="tableDiv">
		<div style="text-align: left; margin-left: 5px; font-size: 20px; margin-bottom: 3px;">부서목록</div>
		<table class="table table-hover">
			<colgroup>
				<col width="20%">
				<col width="40%">
				<col width="40%">
			</colgroup>
			<thead>
				<tr>
					<td>부서번호</td>
					<td>부서명</td>
					<td>지역</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${deptList }" var="deptInfo">
					<tr>
						<td>${deptInfo.deptNum }</td>
						<td>${deptInfo.deptName }</td>
						<td>${deptInfo.deptLocation }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>