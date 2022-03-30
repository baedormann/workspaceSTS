function deleteCart(cartNum){
	if(confirm('상품을 장바구니에서 삭제하시겠습니까?')){
		location.href = '/cart/deleteCart?cartNum=' + cartNum;
		
		//tag.parentNode.submit();
		
		//부모 노드
		document.getElementById('a').parentNode;
		//자식 노드들
		var nodes = document.getElementById('b').childNodes;
		//첫 번째 자식 노드
		var firstChild = document.getElementById('b').firstChild;		
		//마지막 자식 노드
		var firstChild = document.getElementById('b').lastChild;		
		//이전 형제 노드
		var previous = document.getElementById('d').previousSibling;
		//다음 형제 노드
		var next = document.getElementById('d').nextSibling;
		
		
	}
	else{
		
	}
}

function updateItemCnt(selectedTag, itemCode){
	var itemCnt = selectedTag.parentNode.previousElementSibling.firstElementChild.value;	
	
	alert(itemCnt);
	alert(itemCode);
	$.ajax({
		url: '/cart/updateItemCnt', //요청경로
		type: 'post',
		data: {'itemCode':itemCode, 'itemCnt':itemCnt}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('성공');
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}

