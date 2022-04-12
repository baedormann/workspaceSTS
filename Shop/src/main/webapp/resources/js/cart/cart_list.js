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

function updateItemCnt(selectedTag, itemCode, itemPrice){
	var itemCnt = selectedTag.parentNode.previousElementSibling.firstElementChild.value;	
	//var itemPrice = selectedTag.parentNode.parentNode.parentNode.previousElementSibling.value;
	$.ajax({
		url: '/cart/updateItemCnt', //요청경로
		type: 'post',
		data: {'itemCode':itemCode, 'itemCnt':itemCnt}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('상품수량이 변경되었습니다.');
			
			//총 가격 변경
			var totalPrice = itemCnt * itemPrice;	
			//closest() : 선택한 태그 기준으로 가장 가까운 부모태그를 선택
			selectedTag.closest('td').nextElementSibling.innerText = '￦' + totalPrice.toLocaleString(); // .buttonDiv 등과 같이 css문법 적용
			
			//구매가격 변경
			var buyPrice = 0;
			var totalPriceTds = document.getElementsByClassName('totalPriceTd');
			for(var i = 0; i < totalPriceTds.length; i++){
				var originPrice = totalPriceTds[i].innerText;
				//substr(시작인덱스, 길이): 문자열자르기 함수
				var price = parseInt(originPrice.substr(1, originPrice.length - 1).replace(/,/g, ''));
				buyPrice += price;
				document.getElementById('buyPriceDiv').innerText = '￦' + buyPrice.toLocaleString();
			}
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
}

function checkAll(){
	var isChecked = document.getElementById('check').checked;
	var checkboxes = document.getElementsByClassName('chk');
	
	//제목줄의 체크박스가 체크되었을 때
	if(isChecked){
		for(var i = 0; i < checkboxes.length; i++){
			checkboxes[i].checked = true;
		}
	}
	else{
		for(var i = 0; i < checkboxes.length; i++){
			checkboxes[i].checked = false;
		}
	}
}

function deleteCarts(){
	//선택된 체크박스
	var chk = document.querySelectorAll('.chk:checked');
	
	if(chk.length == 0){
		alert('삭제하실 상품을 선택해주세요.');
		return;
	}
	
	//선택한 상품코드를 저장할 배열을 생성
	var itemCodeArr = [];
	itemCodeArr[0] = 'hello';
	
	for(var i = 0; i < chk.length; i++){
		itemCodeArr[i] = chk[i].value;
	}
	
	location.href = '/cart/deleteCarts?itemCodeArr=' + itemCodeArr;
}

function buy(){
	//필요한 데이터를 가져온다(상품코드, 수량, 총가격)
	var checkboxes = document.querySelectorAll('.chk:checked');
	
	if(checkboxes.length == 0){
		alert('구매하실 상품을 선택해주세요.');
		return;
	}
	
	var objArr = [];
	for(var i = 0; i < checkboxes.length; i++){
		var obj = new Object();
		
		obj.itemCode = checkboxes[i].value;
		obj.itemCnt = checkboxes[i].closest('tr').querySelector('input[type="number"]').value;
	
		objArr[i] = obj;
	}
	//JSON.stringify(objArr);
	$.ajax({
		url: '/buy/insertBuys', //요청경로
		type: 'post',
		data: {'data':JSON.stringify(objArr)}, //필요한 데이터 '데이터이름':값
		success: function(result) {
			//ajax 실행 성공 후 실행할 코드 작성
			alert('상품을 구매하셨습니다.');
			
			location.href = '/cart/cartList';
		},
		error: function() {
			//ajax 실행 실패 시 실행되는 구간
			alert('실패');
		}
	});
	
}








