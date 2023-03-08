<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<tiles:insertAttribute name="header" />
	</header>
	<div>
	  <aside>
	      <tiles:insertAttribute name="left" />
	   </aside>
	   <div>
	      <tiles:insertAttribute name="content" />
	    </div>
	</div>
	<footer>
	   <tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>