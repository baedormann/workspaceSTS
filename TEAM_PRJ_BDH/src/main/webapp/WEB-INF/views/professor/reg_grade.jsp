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
강의 목록
<select onchange="searchStu();" id="selectLec">
	<option>미선택</option>
	<c:forEach items="${lecList }" var="lec">
		<option value="${lec.lecNo }">${lec.lecName }</option>
	</c:forEach>
</select>
<table>
	<thead>
		<tr>
			<td>학번</td>
			<td>이름</td>
			<td>성적</td>
			<td>비고</td>
		</tr>
	</thead>
	<tbody id="stuTable">
		
	</tbody>
</table>

<script type="text/javascript" src="/resources/js/lec/reg_grade.js?ver=3"></script>
</body>
</html>