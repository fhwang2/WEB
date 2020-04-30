<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% //실제 DB연결해서 테이블 불러오기
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String sql = "select * from memberinfo";
	
	try{
		String url = "jdbc:mysql://localhost:3306/mydb?"
					+"useUnicode=true&characterEncoding=utf8"; 
		String user = "admin";  
		String pw = "54321";
		
		conn = DriverManager.getConnection(url, user, pw);
		
		if(conn!=null){
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){ //next(): ?OR(bottom-of-row)- 다음 줄의 값이 EOR(end-of-row)이면 false를 리턴
%>
				아이디 : <%=rs.getString("id") %>
				<br>
				주소 : <%=rs.getString("address") %>
				<br>
				등록날짜 : <%=rs.getDate("registerDate") %>
				<hr>
<%
			}//while
		} //if
	}catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
		
	}finally{ //모든 자원 사용 후 close : 열린 순서 반대로 
		if(rs!=null) try { rs.close(); } catch(Exception e){}
		if(stmt!=null) try { stmt.close(); } catch(Exception e){}
		if(conn!=null) try { conn.close(); } catch(Exception e){}
	} //try
%>