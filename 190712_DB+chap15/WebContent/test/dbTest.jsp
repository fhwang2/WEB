<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dbTest</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			String jdbcDriver = "jdbc:mysql://localhost:3306/mydb?" + "useUnicode=true&characterEncoding=utf-8";
			String dbUser = "root";
			String dbPass = "54321";
			String query = "select * from guestbook_message order by message_id desc";

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

			stmt = conn.createStatement();

			rs = stmt.executeQuery(query);

			while (rs.next()) {
	%>

	<div id="guestbook">
		<div id="message_id">
			메세지 번호 :
			<%=rs.getString("message_id")%></div>
		<div id="guest_name">
			작성자 이름 :
			<%=rs.getString("guest_name")%></div>
		<div id="password">
			비밀번호 :
			<%=rs.getString("password")%></div>
		<div id="message">
			메세지 내용 :
			<%=rs.getString("message")%></div>
		<hr>
	</div>


	<%
		}
		} catch (SQLException ex) {
			out.println(ex.getMessage());
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}

		}
	%>

</body>
</html>