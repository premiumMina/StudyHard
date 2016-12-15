package com.reservation.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.member.model.DBUtil;

public class ReservationDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public ReservationDAO() {
		DBUtil db = new DBUtil();
		conn = db.getConnection();
	}
	
	public boolean reservationInsert(ReservationBean bean){
		int id;
		String sql = "";

		try {
			pstmt = conn.prepareStatement("select max(id) from "+bean.getType());
			rs = pstmt.executeQuery();

			if (rs.next())
				id = rs.getInt(1) + 1;
			else
				id = 1;
			sql = "insert into " + bean.getType()
					+ "(roomname, peoplenum, usingtime, price, state, user, id,date) values(?,?,?,?,?,?,?,now())";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bean.getRoomname());
			pstmt.setInt(2, bean.getPeopleNum());
			pstmt.setInt(3, bean.getStartusingtime());
			pstmt.setInt(4, bean.getPrice());
			pstmt.setString(5, bean.getState());
			pstmt.setString(6, bean.getUser());
			pstmt.setInt(7, id);

			int result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
			System.out.println("reservationInsert ¿¡·¯ : " + ex);
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return false;
	}
}
