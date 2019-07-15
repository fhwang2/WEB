package kr.mycom.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

//DB CRUD 연산 전담클래스
public class MessageDao {

	public MessageDao() {
	}

	public ArrayList<MessageVo> selectAll(Connection conn) {
		Statement stmt = null;
		ResultSet rs = null;
		String query = "select * from guestbook_message";

		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);

			ArrayList<MessageVo> list = new ArrayList<MessageVo>();

			while (rs.next()) {
				// 한 튜플을 구성하는 column을 묶음
				MessageVo vo = new MessageVo();
				vo.setMsgid(rs.getInt("message_id"));
				vo.setWriter(rs.getString("guest_name"));
				vo.setPw(rs.getString("password"));
				vo.setContent(rs.getString("message"));
				list.add(vo);
			} // while

			return list;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
		}
		return null;
	}

	public void selectOne() {
		;
	}

	public void insert() {
		;
	}

	public void delete() {
		;
	}

	public void update() {
		;
	}

}
