<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
	text-align: center;
}
table{
	border: 1px solid black;
	border-collapse: collapse;
	margin-bottom: 25px;
}
tr{
	border: 1px solid black;
}
.searchTable{
	vertical-align: middle;
}
.searchBtn{
	height: 60px;
}
.dateDiv{
	display: inline-block;
}
.dateTilde{
	display: inline-block;
	margin: 0px 30px 0px 30px;
}
.date{
	width: 168px;
}
.searchText{
	width: 150px;
}
.pageDiv{
	margin: 0px;
	width: 700px;
}
</style>
</head>
<body>
	<div class="container">
		<div>
			<form action="/admin/buyList" method="post" id="searchForm">
				<input type="hidden" value="1" name="nowPage" id="nowPage">
				<input type="hidden" name="menuCode" value="${selectedMenu }">
				<input type="hidden" name="subMenuCode" value="${selectedSubMenu }">
				<table class="table searchTable" style="width: 700px;">
					<colgroup>
						<col width="20%">
						<col width="25%">
						<col width="15%">
						<col width="25%">
						<col width="15%">
					</colgroup>
					<tr>
						<td>주문번호</td>
						<td><input type="text" name="searchOrderNum" class="searchText form-control" value="${buySearchVO.searchOrderNum }"></td>
						<td>구매자</td>
						<td><input type="text" name="searchBuyer" class="searchText form-control" value="${buySearchVO.searchBuyer }"></td>
						<td rowspan="2"><input type="button" class="searchBtn btn btn-secondary btn-primary" value="검색" onclick="searchForm.submit();"></td>
					</tr>
					<tr>
						<td>구매일시</td>
						<td colspan="3">
							<div class="dateDiv">
								<input type="date" name="searchFromDate" class="form-control date" value="${buySearchVO.searchFromDate }">
							</div>
							<div class="dateTilde">
								~
							</div>
							<div class="dateDiv">
								<input type="date" name="searchToDate" class="form-control date" value="${buySearchVO.searchToDate }">
							</div>
						</td>
					</tr>
				</table>		
			</form>
		</div>
		<div>
		 	<table class="table table-striped table-hover" style="width: 700px;">
		 		<thead>
					<tr>
						<td>No</td>
						<td>주문번호</td>
						<td>구매자</td>
						<td>구매일시</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${buyList }" var="buyInfo" varStatus="status">
						<tr>
							<td>${buySearchVO.totalCnt - buyInfo.rowNum + 1}</td>
							<td><span style="cursor: pointer;" onclick="selectBuyListDetail('${buyInfo.orderNum}');">${buyInfo.orderNum }</span></td>
							<td>${buyInfo.memId }(${buyInfo.memberVO.memName })</td>
							<td>${buyInfo.buyDate }</td>
						</tr>
					</c:forEach>
				</tbody>
		 	</table>
		</div>
		<div class="pageDiv">
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item <c:if test="${!buySearchVO.prev }">disabled</c:if>"><a class="page-link" href="/admin/buyList?nowPage=${buySearchVO.beginPage - 1 }" aria-label="Previous"> 
						<span aria-hidden="true">&laquo;</span>
					</a></li>
					<c:forEach begin="${buySearchVO.beginPage }" end="${buySearchVO.endPage }" var="pageIndex">
						<li class="page-item <c:if test="${pageIndex eq buySearchVO.nowPage }">active</c:if>"><a class="page-link" href="javascript:search(${pageIndex });">${pageIndex}</a></li>
					</c:forEach>
					<li class="page-item <c:if test="${!buySearchVO.next }">disabled</c:if>"><a class="page-link" href="/admin/buyList?nowPage=${buySearchVO.endPage + 1 }"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="buyInfoModal" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">${buyInfo.orderNum }</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="/resources/js/admin/buy_list.js?ver=34"></script>
</body>
</html>