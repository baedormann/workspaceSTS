<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="hidden" id="itemCode" value="${cartVO.itemCode }">
<input type="hidden" id="memId" value="${cartVO.memId }">
<script type="text/javascript">
	if (confirm('장바구니에 상품이 등록되었습니다.\n장바구니로 이동할까요?')) {
		var memId = document.getElementById('memId').value;
		location.href='/cart/cartList?memId=' + memId;
	}
	else {
		var itemCode = document.getElementById('itemCode').value;
		location.href="/item/itemDetail?itemCode=" + itemCode;
	}
</script>
</body>
</html>