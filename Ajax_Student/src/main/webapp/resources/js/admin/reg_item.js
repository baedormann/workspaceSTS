function regBook(){
	var selectBox = document.getElementById('categorySelector').value;
	//카테고리 미선택 시 alert
	if(selectBox == 1){
		alert('카테고리를 선택해주세요!');
		return;
	}
	
	//도서명 미기입 시 alert
	var bookName = document.getElementById('bookName').value;
	if(bookName == ''){
		alert('도서명을 입력해주세요!');
		return;
	}
	
	//가격 미기입 시 alert
	var bookPrice = document.getElementById('bookPrice').value;
	if(bookPrice == ''){
		alert('가격을 입력해주세요!');
		return;
	}
	
	//submit
	var formTag = document.getElementById('regItemForm');
	formTag.submit();
}