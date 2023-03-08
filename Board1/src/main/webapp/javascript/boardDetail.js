function deleteReply(){
	confirm('댓글을 삭제하시겠습니까?');
}

function updateBoardForm(){
	var id = document.getElementById('idHidden').value;
	var title = document.getElementById('titleHidden').value;
	var writer = document.getElementById('writerHidden').value;
	var content = document.getElementById('contentHidden').value;
	
	$.ajax({
		url:'/updateBoardForm.do', 
		type:'get', 
		data:{},  
		success: function(data) {  
			var str = '';
			var str = '<form action="/updateBoard.do" method="post">';
			str += '<div>';
			str += '<div>';
			str += '<span>제목 <input type="text" name="title" id="boardTitle"></span> <span> 작성자  ' + writer + '</span>';
			str += '</div>';
			str += '<div>';
			str += '<div>내용 </div>';
			str += '<div>';
			str += '<textarea col="50" row="5" id="boardContent" name="content"></textarea>';
			str += '</div>';
			str += '</div>';
			str += '</div>';
			str += '<div style="text-align: right; width: 450px;">';
			str += '<input type="submit" value="수정">';
			str += '<input type="button" value="취소" onclick="location.reload(true)">';
			str += '</div>';
			str += '<input type="hidden" name="id" id="idHidden" value="' + id + '">';
			/*str += '<input type="hidden" id="titleHidden" value="' + title + '">';
			str += '<input type="hidden" id="writerHidden" value="' + writer + '">';
			str += '<input type="hidden" id="contentHidden" value="' + content + '">';*/
			str += '</div>';
			str += '</form>';

			document.getElementById('container').innerHTML = str;


		},    
		error: function(err) {        
		
		}
	});
}

function updateBoard(){
	var id = document.getElementById('idHidden').value;
	var title = document.getElementById('boardTitle').value;
	var content = document.getElementById('boardContent').value;
	
	/*$.ajax({
		url: '/updateBoard.do', 
		datatype: 'json',
		type: 'post', 
		data:{'id': id,
			  'title': title,
			  'content': content},  
		success: function(result) {  
			if(result){
			    alert('update 성공');
			} else {
				alert('전송된 값 없음');				
			}
			var str = '';
			str += '<div>';
			str += '<div>';
			str += '<span>제목 ' + result.title + '</span> <span> 작성자  ' + result.writer + '</span>';
			str += '</div>';
			str += '<div>';
			str += '<div>내용 </div>';
			str += '<div>';
			str += result.content;
			str += '</div>';
			str += '</div>';
			str += '</div>';
			str += '<div style="text-align: right; width: 450px;">';
			str += '<input type="button" value="수정" onclick="updateBoardForm();">';
			str += '<input type="button" value="삭제" onclick="location.href=\'/deleteBoard.do?id=${board.id}\'">';
			str += '<input type="button" value="목록" onclick="location.href=\'/boardList.do\'">';
			str += '</div>';
			str += '<input type="hidden" id="idHidden" value="${board.id }">';
			str += '<input type="hidden" id="titleHidden" value="${board.title }">';
			str += '<input type="hidden" id="writerHidden" value="${board.writer }">';
			str += '<input type="hidden" id="contentHidden" value="${board.content }">';
			str += '</div>';

			document.getElementById('container').innerHTML = str;

		},    
		error: function(request,status,error) {        
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});*/
}

function showRegReply(replyId) {
	var targetTable = document.getElementById(replyId + 'table');

	var str = '';
	str += '<tr>';
	str += '<td>작성자</td>';
	str += '<td><input type="text" name="writer"></td>';
	str += '<td>비밀번호</td>';
	str += '<td><input type="password" name="password"></td>';
	str += '<td rowspan="2"><input type="submit" value="등록"></td>';
	str += '</tr>';
	str += '<tr>';
	str += '<td>내용</td>';
	str += '<td colspan="3" style="vertical-align: middle;">';
	str += '<textarea rows="3" cols="78%" name="content"></textarea>';
	str += '</td>';
	str += '</tr>';
	
	targetTable.innerHTML = str;
	
	
}