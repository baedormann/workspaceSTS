<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	width: 800px;
	margin: 0 auto;
	margin-top: 30px;
	border-radius: 20px;
}
tr, td{
}
input[type=text]{
}
.textSpan{
	display: inline-block;
	text-align: center;
	width: 120px;
}
.btnDiv{
	width: 800px;
	margin: 0 auto;
	margin-top: 30px;
	text-align: right;
}
</style>
</head>
<body>
<div>
	<table>
		<colgroup>
			<col width="15%">
			<col width="45%">
			<col width="15%">
			<col width="25%">
		</colgroup>
		<tr>
			<td><span class="input-group-text textSpan">제목</span></td>
			<td><span class="input-group-text valueSpan" style="background-color: white;">${boardInfo.boardTitle }</span></td>
			<td><span class="input-group-text textSpan">작성자</span></td>	
			<td><span class="input-group-text valueSpan" style="background-color: white;">${boardInfo.boardWriter }</span></td>		
		</tr>
		<tr>
			<td><span class="input-group-text textSpan" style="height: 300px; line-height: 286px;">내용</span></td>
			<td colspan="3"><span class="input-group-text" style="height: 300px; line-height: 286px; background-color: white;">${boardInfo.boardContent }</span></td>
		</tr>
	</table>
</div>
<div class="btnDiv">
	<input type="button" value="뒤로가기" style="display:inline-block; width: 100px;" class="form-control" onclick="location.href='/board/boardList'">
</div>
</body>
</html>