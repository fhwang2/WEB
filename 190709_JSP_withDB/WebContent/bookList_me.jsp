<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.1 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>bookList_연습</title>
<style type="text/css">
	#container{
	}
</style>
</head>
<body>
	<h1>bookList 연습용</h1>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = null;
	
		
	%>
	<div id="container">
		<div id="title"></div>
		<div id="img"></div>
		<div id="price"></div>
		<div id="saleprice"></div>
		<div id="content"></div>
	</div>
</body>
</html>