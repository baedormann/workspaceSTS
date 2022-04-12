<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table{
	width: 900px;
	margin: 0 auto;
	margin-top: 5px;
	text-align: center;
}
.table > tbody > tr > td:nth-child(2) {
	text-align: left;
	padding-left: 15px;
}
.btnDiv{
	width: 900px;
	margin: 0 auto;
	text-align: right;
	margin-top: 10px;
	margin-bottom: 25px;
	padding-right: 15px;
}
.cntDiv{
	width: 900px;
	margin: 0 auto;
	text-align: left;
	margin-top: 15px;
	font-size: 12px;
	padding-left: 20px;
}
</style>
</head>
<body>
<div class="tableDiv">
	<div class="cntDiv">
		<strong>총 ${boardCnt }개의 게시물</strong>
	</div>
	<table class="table table-hover">
		<colgroup>
			<col width="15%">	
			<col width="*">	
			<col width="15%">	
			<col width="15%">	
		</colgroup>
		<thead>
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boardList }" var="board">
			  <tr>
			  	<td>
			  		${board.boardNum }
			  	</td>
			  	<td>
			  		<span onclick="location.href='/board/boardDetail?boardNum=${board.boardNum}'" style="cursor: pointer;">${board.boardTitle }</span>
			  	</td>
			  	<td>
			  		${board.boardWriter }
			  	</td>
			  	<td>
			  		${board.createDateToDate }
			  	</td>
			  </tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="pageDiv" style="text-align:center;">
	<c:if test="${boardVO.prev }">
		<a href='/board/boardList?nowPage=${boardVO.beginPage - 1 }' style="color: gray; text-decoration: none;">&lt;</a>
	</c:if>
	<c:forEach begin="${boardVO.beginPage }" end="${boardVO.endPage }" var="pageIndex">
		<a href='/board/boardList?nowPage=${pageIndex }' style="text-decoration: none;">
			<span
				<c:choose>
					<c:when test="${pageIndex eq boardVO.nowPage }">
						style="color: black; font-weight: bold;"
					</c:when>
					<c:otherwise>
						style="color: gray;"
					</c:otherwise>
				</c:choose>   > ${pageIndex }</span>
		</a>
		
	</c:forEach>
	<c:if test="${boardVO.next }">
		<a href='/board/boardList?nowPage=${boardVO.endPage + 1 }' style="color: gray; text-decoration: none;">></a>
	</c:if>
	
</div>
<div class="btnDiv">
	<input type="button" class="form-control" style="width: 100px; display: inline-block;" value="글 작성" onclick="location.href='/board/boardWrite?ver=5'">
</div>
</body>
</html>