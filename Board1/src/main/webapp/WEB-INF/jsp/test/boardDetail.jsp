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
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<div class="container" id="container">
	<div id="border">
		<table class="generalTable listCenter">
			<colgroup>
				<col width="10%">
				<col width="45%">
				<col width="15%">
				<col width="30%">
			</colgroup>
			<tbody>
				<tr>
					<td>제목</td>
					<td>${board.title }</td>
					<td>작성자</td>
					<td>${board.writer }</td>
				</tr>
				<tr style="height: 300px;">
					<td>내용</td>
					<td colspan="3" style="text-align: left; padding-left: 25px;">${board.content }</td>
				</tr>
			</tbody>
		</table>
		<div class="btnDiv">
			<input type="button" value="수정" onclick="updateBoardForm();">
			<input type="button" value="삭제" onclick="location.href='/deleteBoard.do?id=${board.id}'">
			<input type="button" value="목록" onclick="location.href='/boardList.do'">
		</div>
		
		
		<input type="hidden" id="idHidden" value="${board.id }">
		<input type="hidden" id="titleHidden" value="${board.title }">
		<input type="hidden" id="writerHidden" value="${board.writer }">
		<input type="hidden" id="contentHidden" value="${board.content }">
		
		<div style="width: 100%; text-align: left; margin-bottom: 20px; font-weight: bold; font-size: 20px;">
			댓글 
		</div>
		<!-- 댓글 작성란 -->
		<form action="/regReply.do" method="post">
			<table class="replyRegTable">
				<tbody>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="writer"> </td>
						<td>비밀번호</td>
						<td><input type="password" name="password"></td>
						<td rowspan="2"><input type="submit" value="등록"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="3" style="vertical-align: middle;">
							<textarea rows="3" cols="78%" name="content"></textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<input type="hidden" name="reference_board" value="${board.id }">
		</form>
		
		<!-- 댓글 목록 -->
		<div class="replyListDiv">
			<table class="replyTable" id="insertTable">
				<colgroup>
					<col width="5%">
					<col width="65%">
					<col width="*">
				</colgroup>
				<!-- 댓글 반복문 -->
				<c:forEach items="${replyList }" var="reply" varStatus="status">
					<c:if test="${reply.reference_reply eq ''}">
						<tr class="type1Tr replyFirstTr"> 
							<td colspan="2" onclick="showRegReply('${status.current.id}')" style="cursor: pointer;">${reply.writer}</td>
							<td style="text-align: right; color: #C0C0C0;">${reply.create_date } <span class="close" onclick="deleteReply();"></span></td>
						</tr>
						<tr class="type1Tr replySecondTr"> 
							<td colspan="3" onclick="showRegReply('${status.current.id}')" style="cursor: pointer;">${reply.content }</td>
						</tr>
						<tr>
							<td colspan="3">
								<table id="${reply.id }table">
								</table>
							</td>
						</tr>
						<!-- 댓글입력란이 들어갈 tr -->
						<!-- <tr>
							<td>작성자</td>
							<td><input type="text" name="writer"></td>
							<td>비밀번호</td>
							<td><input type="password" name="password"></td>
							<td rowspan="2"><input type="submit" value="등록"></td>
						</tr>
						<tr>
							<td>내용</td>
							<td colspan="3" style="vertical-align: middle;"><textarea
									rows="3" cols="78%" name="content"></textarea></td>
						</tr> -->
							<!-- 대댓글 반복문 -->
						<c:forEach items="${replyList }" var="reply2">
							<c:if test="${reply2.reference_reply eq reply.id }">
								<tr class="type2Tr replyFirstTr"> 
									<td rowspan="2" style="color: #C0C0C0; border-bottom: #E0E0E0 1px solid;">&nbsp;┗</td>
									<td style="font-weight: bold;">${reply2.writer}</td>
									<td style="color: #C0C0C0;">${reply2.create_date } <span class="close" onclick="deleteReply();"></span></td>
								</tr>
								<tr class="type2Tr replySecondTr"> 
									<td colspan="2" >${reply2.content }</td>
								</tr>
							</c:if>							
						</c:forEach>
					</c:if>
				</c:forEach>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript" src="../../../javascript/boardDetail.js"></script>
</body>
</html>