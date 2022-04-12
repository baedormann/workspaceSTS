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
.submitDiv{
	width: 800px;
	margin: 0 auto;
	margin-top: 30px;
	text-align: right;
}
</style>
</head>
<body>
<form action="/board/boardWrite" method="post">
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
			<td><input type="text" class="form-control" name="boardTitle"></td>
			<td><span class="input-group-text textSpan">작성자</span></td>	
			<td><input type="text" class="form-control" name="boardWriter"></td>		
		</tr>
		<tr>
			<td><span class="input-group-text textSpan" style="height: 300px; line-height: 286px;">내용</span></td>
			<td colspan="3"><textarea rows="12" cols="" class="form-control" name="boardContent"></textarea></td>
		</tr>
	</table>
</div>
<div class="submitDiv">
	<input type="submit" value="확인" class="form-control" style="width: 100px; display: inline-block;">
</div>
</form>
</body>
</html>