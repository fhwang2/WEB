<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<%
	// 1. DB연결 드라이버 클래스 호출
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	
	try{ //2. mydb 접속 - 오라클의 경우 : jdbc:orcl://localhost:0000/mydb
		String url = "jdbc:mysql://localhost:3306/mydb?"
					+"useUnicode=true&characterEncoding=utf8"; 
		String user = "root";  //root는 로컬 외에 접속할 수 없음 - 때문에 원격으로 들어가기 위해서는 admin으로 접속해야함
		String pw = "54321";
		//DB연결정보(주소, 계정) 설정
		conn = DriverManager.getConnection(url, user, pw);
		
		if(conn!=null){
			out.write("<h1>연결성공</h1>"); //<h1>:html 소스를 넣는 건 오류발생의 주요 원인
		} //if
		
	}finally{
		
	} //try
%>
</html>
<!-- html 표현을 위해 짧은 명령어로 표현 -->
<!--
	// 1. DB연결 드라이버 클래스 호출
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	
	try{ //2. mydb 접속 - 오라클의 경우 : jdbc:orcl://localhost:1521/mydb
		String url = "jdbc:mysql://localhost:3306/mydb?"
					+"useUnicode=true&characterEncoding=utf8"; 
		String user = "root";  //root는 로컬 외에 접속할 수 없음 - 때문에 원격으로 들어가기 위해서는 admin으로 접속해야함
		String pw = "54321";
		//DB연결정보(주소, 계정) 설정
		conn = DriverManager.getConnection(url, user, pw);
		
		if(conn!=null){
		
/%>	슬래시 없음 : 여기 바뀜 = 순수 자바코드
		<h1> </%="연결성공"%> </h1> = html 코드
</%	= 다시 자바코드 시작
		} //if
		
	}finally{
		
	} //try
%> -->