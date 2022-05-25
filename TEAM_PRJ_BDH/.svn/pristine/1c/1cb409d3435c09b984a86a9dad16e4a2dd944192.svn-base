function searchStu() {
	var selectLec = document.getElementById('selectLec').value
	$.ajax({
		url: '/pro/selectStu', //요청경로
		type: 'post',
		data: {'lecNo':selectLec}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성

			str = '';
			for(var i = 0 ; i < result.length ; i++){
				str += '<tr>'
				str += '<td>'+ result[i].stuNo +'</td>'
				str += '<td>'+ result[i].memName +'</td>'
				str += '<td>'+ result[i].grade +'</td>'
				str += '<td><select>'
				str += '<option>미선택</option>'
				str += '<option <c:if test="'+ result[i].grade +'.equals(A)">selected</c:if>>A</option>'
				str += '<option <c:if test="'+ result[i].grade +'.equals(B)">selected</c:if>>A</option>'
				str += '<option <c:if test="'+ result[i].grade +'.equals(C)">selected</c:if>>A</option>'
				str += '<option <c:if test="'+ result[i].grade +'.equals(D)">selected</c:if>>A</option>'
				str += '<option <c:if test="'+ result[i].grade +'.equals(E)">selected</c:if>>A</option>'
				str += '<option <c:if test="'+ result[i].grade +'.equals(F)">selected</c:if>>A</option>'
				str += '</select></td>'
				str += '<td><button type="button" onclick="regGrade();">성적 변경</button></td>'
				str += '</tr>'
			}
			if(result == null){
				str = '현재 강의를 듣고있는 인원이 없습니다';
			}
			document.getElementById('stuTable').innerHTML = str;
			
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}
