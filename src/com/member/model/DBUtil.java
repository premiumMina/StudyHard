package com.member.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
	
	public static ResultSet findUser(Connection con, String uid) {
		String sqlSt = "SELECT password FROM member WHERE m_id=";
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
