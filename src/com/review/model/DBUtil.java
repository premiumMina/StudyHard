package com.review.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
Connection conn;
	
	public Connection getConnection() {
		try {
			/* 드라이버 로딩 : DriverManager에 등록한다. */
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/studyDB?useSSL=false&autoReconnect=true";
			String username = "root";
			String password = "root";

			conn = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException | SQLException e) {
			System.err.println("데이터베이스를 사용하지 않습니다. :" + e);
			return conn;
		}
		return conn;
	}
	
	public static ResultSet findUser(Connection con, String uid) {
		String sqlSt = "SELECT password FROM member WHERE id=";
		Statement st;
		try {
			st = con.createStatement();

			if (st.execute(sqlSt + "'" + uid + "'")) {
				return st.getResultSet();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
