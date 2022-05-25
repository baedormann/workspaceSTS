<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	border: 1px solid black;
}
tr td{
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
<table>
	<thead>
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>단과대</td>
			<td>학과</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>학적 상태</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${stuList }" var="stu">
			<tr>
				<td>1</td>
				<td>${stu.memName }</td>
				<td>${stu.collName }</td>
				<td>${stu.deptName }</td>
				<td>${stu.memPhone }</td>
				<td>${stu.memEmail }</td>
				<td>${stu.stuStatus }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>