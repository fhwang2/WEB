<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Date d = new Date();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.write("안녕");
	out.write("오늘시간 : "+d);   //out.write()는 data 타입을 출력할 수 없어 문자열로 출력, 문자열 뒤에 data타입을 연달아 넣으면 문자열로 인식
%>

<!-- 출력문 짧게 표현하기, 한문장밖에 못 넣는다 -->
<%= "오늘시간 : "+d %>
</body>
</html>