<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/board.css'/>"/>
</head>
<body>
<div class="container">
	<div id="border">
		<table class="listTable listCenter">
			<colgroup>
				<col width="5%">
				<col width="44%">
				<col width="18%">
				<col width="16%">
				<col width="10%">
				<col width="7%">
			</colgroup>
			<thead>
				<tr>
					<th colspan="2">제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
					<th>추천</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="board" varStatus="status">
					<tr onclick="boardDetail('${board.id}');">
						<td>${fn:length(list) - status.index }</td>
						<td>${board.title }</td>
						<td>${board.writer }</td>
						<td>${board.create_date }</td>
						<td>1000</td>
						<td>5</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="btnDiv">
			<input type="button" value="다중test" onclick="location.href='/testMulti.do'">
			<input type="button" value="글쓰기" onclick="location.href='/regBoard.do'">
		</div>
	</div>
</div>
<script type="text/javascript">
function boardDetail(id){
	location.href='/boardDetail.do?id=' + id;
}
</script>
</body>
</html>