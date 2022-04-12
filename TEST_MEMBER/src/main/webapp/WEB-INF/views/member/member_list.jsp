<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face {
    font-family: 'MinSans-Medium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Medium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.container{
	width: 90%;
	margin: 0 auto;
	text-align: center;
	font-family: MinSans-Medium;
}
.subtitleDiv{
	font-size: 20px;
	margin-top: 20px;
	text-align: center;
}
.tableDiv{
	margin-top: 20px;
}
table{
	width: 50%;
	margin: 0 auto;
}
input[type="button"]{
	margin-top: 25px;
	width: 120px;
	height: 30px;
	font-family: MinSans-Medium;
	border: 1px solid #daab05;
	background-color: #Fccd05;
	border-radius: 4px;
	cursor: pointer;
}
.memberUtilDiv{
	margin-top: 20px;
	text-align: right;
}
.logoutSpan, .loginSpan{
	margin-left: 10px;
	cursor: pointer;
}
</style>
</head>
<body>
<div class="container">
	<div class="tableDiv">
		<div class="memberUtilDiv">
			<c:choose>
				<c:when test="${not empty sessionScope.loginInfo.memberName }">
					<span>${sessionScope.loginInfo.memberName }님 반갑습니다.</span>
					<span class="logoutSpan" onclick="location.href='/member/logout'">logout</span>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">alert('로그인이 필요한 서비스입니다.'); location.href='/member/login';</script>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="subtitleDiv">
			Member List
		</div>
		<div class="tableDiv">
			<table>
				<colgroup>
					<col width="20%">
					<col width="20%">
					<col width="20%">
					<col width="20%">
					<col width="20%">
				</colgroup>
				<thead>
					<tr>
						<td>ID</td>
						<td>NAME</td>
						<td>AGE</td>
						<td>ADDRESS</td>
						<td>BIRTH DATE</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList }" var="member">
						<tr>
							<td>
								${member.memberId }
							</td>
							<td>
								${member.memberName }
							</td>
							<td>
								${member.memberAge }
							</td>
							<td>
								${member.memberAddr }
							</td>
							<td>
								${member.memberBirthday }
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<c:if test="${sessionScope.loginInfo.adminYn eq 'Y' }">
		<input type="button" value="관리자 메뉴" onclick="location.href='/admin/adminPage'">
	</c:if>
</div>
</body>
</html>