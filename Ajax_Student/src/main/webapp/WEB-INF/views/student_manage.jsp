<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 300px;
	margin: 0 auto;
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
tr, td {
	border: 1px solid black;
}
</style>
</head>
<body>

<table>
	<tr>
		<td colspan="3">
			<select>
				<option>전체</option>
				<c:forEach items="${classList }" var="classInfo">
					<option value="${classInfo.classCode }">${classInfo.className }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>No</td><td>학생명</td><td>반</td>
	</tr>
	<c:forEach items="${stuList }" var="stu">
		<tr>
			<td>${stu.stuNum }</td>
			<td>${stu.stuName }</td>
			<td>${stu.className }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>