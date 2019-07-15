<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>book.jsp</title>
<style type="text/css">
	#book {
		float: left;
		border-top: solid thin #777777;
		margin: 5px;
		width: 30%;
		height: 250px;
		padding: 5px;
		/* overflow-y:scroll; */
	}
	
	#img {
		float: left;
		margin-right: 5px;
	}
	
	#title {
		font-weight: bold;
	}
	
	#oprice {
		text-decoration: line-through;
		font-size: 10pt;
	}
	
	#price {
		font-weight: bold;
		font-size: 13pt;
		color: red;
	}
	
	#content {
		font-size: 10pt;
		margin: 5px;
	}
</style>
</head>
<body>
	<h1>190709_JSP실습_황현정</h1>
	<%
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/mydb?" + "useUnicode=true&characterEncoding=utf-8";
			String dbUser = "root";
			String dbPass = "54321";
			String query = "select * from books order by bookid desc";

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

			stmt = conn.createStatement();

			rs = stmt.executeQuery(query);

			while (rs.next()) {
				int price = rs.getInt("price");
				int sale_price = (int) (price * 0.8);
	%>
			
		<div id="book">
			<div id="img">
				<image src='img/<%=rs.getString("img") %>.jpg'>
			</div>
			<div id="title"><%=rs.getString("title") %></div>
			<div id="oprice"><%=rs.getInt("price") %></div>
			<div id="price"><%=sale_price %>원</div>
			<div id="content"><%=rs.getString("content") %></div>
		</div>
		
		<% } //while
		} catch(SQLException ex) {
			out.println(ex.getMessage());
			ex.printStackTrace();
		} finally {
			if(rs!=null) try{ rs.close(); } catch(SQLException ex){}
			if(stmt!=null) try{ stmt.close(); } catch(SQLException ex){}
			if(conn!=null) try{ conn.close(); } catch(SQLException ex){}
			
		}
		
	%>

</body>
</html>