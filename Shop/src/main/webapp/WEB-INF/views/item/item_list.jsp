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
img:hover{
	opacity: 0.7; /* opacity는 0에서 1사이 */
}
</style>
</head>
<body>

<div class="row">
	<c:forEach items="${itemList }" var="item">
		
		<div class="col-2 text-center" style="margin-bottom: 1rem;">
			<div class="card" style="width: 13rem;">
				<a href="/item/itemDetail?itemCode=${item.itemCode }">
					<img src="/resources/images/${item.attachedImgName }" class="card-img-top" alt="..." style="height:16rem;">
				</a>
				<div class="card-body" style="padding: 0.1rem, 1rem;">
					<h5 class="card-title">${item.itemName }</h5>
					<p class="card-text">
						<fmt:formatNumber value="${item.itemPrice }" pattern="\#,###"/>
					</p>
				</div>
			</div>
		</div>
		
	</c:forEach>
</div>

</body>
</html>