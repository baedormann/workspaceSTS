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
	width: 900px;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
}
.container > tbody > tr{
	height: 600px;
	border: 1px solid black;
}
.container > tbody > tr > td{
	border: 1px solid black;
}
.stuTable{
	margin: 0 auto;
	width: 400px;
	border: 1px solid black;
	text-align: center;
	border-collapse: collapse;
}
.stuTable tr, .stuTable td{
	border: 1px solid black;
}
.stuInfoTable{
	width: 400px;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
}
.stuInfoTable tr, .stuInfoTable td{
	border: 1px solid black;
}
</style>
</head>
<body>
<table class="container">
	<colgroup>
		<col width="50%">
		<col width="50%">
	</colgroup>
	<tr>
		<td>
			<div style="text-align: center; margin-bottom: 20px;">
				<select onchange="selectStuListAjax()" id="a">
					<option value="">전체</option>
					<c:forEach items="${classList }" var="classInfo">
						<option value="${classInfo.classCode }" <c:if test="${classVO.classCode eq classInfo.classCode }">selected</c:if>>${classInfo.className }</option>
					</c:forEach>
				</select>
			</div>
			<div>
				<table class="stuTable">
					<thead>
						<tr>
							<td>No</td><td>학생명</td><td>반</td>
						</tr>
					</thead>
					<tbody id="stuListTbody">
						<c:forEach items="${stuList }" var="stu" varStatus="status">
							<tr>
								<td>${stuList.size() - status.index }</td>
								<td><span onclick="showInfo(${stu.stuNum});" style="cursor: pointer;">${stu.stuName }</span></td>
								<td>${stu.className }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</td>
		<td>
			<div>
				<table class="stuInfoTable">
					<colgroup>
						<col width="20%">
						<col width="30%">
						<col width="20%">
						<col width="30%">
					</colgroup>
					<tr>
						<td>이름</td>
						<td colspan="3">홍길동</td>
					</tr>
					<tr>
						<td>국어</td>
						<td>100</td>
						<td>영어</td>
						<td>100</td>
					</tr>
				</table>
			</div>
		</td>
	</tr>
</table>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="/resources/student_manage.js?ver=12"></script>
</body>
</html>