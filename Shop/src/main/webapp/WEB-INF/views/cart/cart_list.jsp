<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	text-align: center;
}
thead{
	background-color: #ffc300;
	font-weight: bold;
	color: white;
}
thead tr{
	border-bottom: 2px solid #f0a500;
}
.row{
	--bs-gutter-x: 0.5rem;
}
</style>
</head>
<body>
<div class="row">
	<div class="col">
		<div class="col-12">
			<table class="table table-striped table-hover align-middle">
				<colgroup>
					<col width="5%">
					<col width="5%">
					<col width="10%">
					<col width="*">
					<col width="15%">
					<col width="20%">
					<col width="15%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col"><input type="checkbox" id="check" class="form-check-input" onclick="checkAll();" checked></th>
						<th scope="col">No</th>
						<th scope="col">상품이미지</th>
						<th scope="col">상품명</th>
						<th scope="col">가격</th>
						<th scope="col">수량</th>
						<th scope="col">총 가격</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${not empty cartList }">
							<c:forEach items="${cartList }" var="cart">
								<tr>
									<th scope="row">
										<input type="checkbox" class="form-check-input chk" value="${cart.itemCode }" checked>
									</th>
									<td>1</td>
									<td>
										<img src="/resources/images/${cart.attachedImgName }" width="50px">
									</td>
									<th scope="col">${cart.itemName }</th>
									<th scope="col"><fmt:formatNumber value="${cart.itemPrice }" pattern="\#,###"/></th>
									<td>
										<div class="row">
											<div class="col-7">
												<input type="number" class="form-control itemCnt" value="${cart.itemCnt }">
											</div>
											<div class="col-5 d-grid">
												<button type="button" class="btn btn-warning" onclick="updateItemCnt(this, '${cart.itemCode}', ${cart.itemPrice });">변경</button>
											</div>
										</div>
									</td>
									<td scope="col" class="totalPriceTd"><fmt:formatNumber value="${cart.totalPrice }" pattern="\#,###"/></td>
									<td>
										<form action="/cart/deleteCart" method="post">
										<input type="hidden" name="itemCode" value="${cart.itemCode }">
										<button type="button" class="btn btn-warning" onclick="deleteCart(${cart.cartNum});">삭제</button>
										</form>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="8">
									장바구니에 담긴 상품이 없습니다.
								</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		<div class="col-12">
			<div class="row">
				<div class="col-1 offset-10 text-end" style="background-color: #ffc300; padding:6px; border: 1px solid #ffc300; font-style: italic; font-weight: bold; border-top-left-radius: 10px; border-bottom-left-radius: 10px;">구매 가격</div>
				<div class="col-1" style="padding: 6px; border-bottom: 1px solid #ffc300;" id="buyPriceDiv"><fmt:formatNumber value="${totalPrice }" pattern="\#,###"/></div>
			</div>
		</div>
		<div class="col-12">
			<div class="row" style="margin-top: 20px;">
				<div class="col">
					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
					  <button class="btn btn-primary me-md-2" type="button" onclick="buy()">선택 구매</button>
					  <button class="btn btn-primary" type="button" onclick="deleteCarts()">선택 삭제</button>
					</div>	
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="/resources/js/cart/cart_list.js?ver=41"></script>
</body>
</html>