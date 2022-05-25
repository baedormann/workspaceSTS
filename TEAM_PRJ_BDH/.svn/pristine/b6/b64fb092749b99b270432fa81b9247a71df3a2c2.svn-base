<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.teamprj.member.MemberBean" %>
<%@ page import="com.kh.teamprj.member.**" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 조회</title>
<!-- 부트스트랩 datepicker -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css" >
</head>
<body>
<h2> 회원정보수정 </h2>
	 <fieldset>
 		<legend> 회원정보 수정 </legend>
 		<form action="updateStu.jsp" method="post" name="fr" onsubmit="return check();">
 		학번 : <input type="text" name="stuNo" value="<%=oldMB.getstuNo() %>" readonly="readonly"><br>
 		비밀번호 : <input type="password" name="pass" placeholder="비밀번호를 입력하시오."><br>
 		이름 : <input type="text" name="name" value="<%=oldMB.getstuName() %>"><br>
 		이메일 : <input type="text" name="email" value="<%=oldMB.getstuEmail() %>"><br>
 		성별 : <input type="radio" name="gender" value="남"
 		<%if(oldMB.getGender().equals("남")){ %>
 		checked
 		<% } %>
 		>남
 		<input type="radio" name="gender" value="여"
 		<%if(oldMB.getGender().equals("여")) { %>
		checked
		<% } %>
		>여 
		<input type="submit"	value="회원수정">
		<input type="reset"	 value="초기화">
 		</form>
 </fieldset>
</body>
</html>
 --%>