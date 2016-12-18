package com.reservation.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
					+ "(roomname, peoplenum, startusingtime, endusingtime, price, state, user, id, usingdate, date) values(?,?,?,?,?,?,?,?,?,now())";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bean.getRoomname());
			pstmt.setInt(2, bean.getPeopleNum());
			pstmt.setInt(3, bean.getStartusingtime());
			pstmt.setInt(4, bean.getEndusingtime());
			pstmt.setInt(5, bean.getPrice());
			pstmt.setString(6, bean.getState());
			pstmt.setString(7, bean.getUser());
			pstmt.setInt(8, id);
			pstmt.setString(9, bean.getUsingdate());

			int result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
<<<<<<< Updated upstream
			System.out.println("reservationInsert error : " + ex);
=======
			System.out.println("reservationInsert 에러 : " + ex);
>>>>>>> Stashed changes
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		
		return false;
	}
	
	public List getDetail(String type, int peopleNum, String usingdate) throws Exception {
		List<ReservationBean> list = new ArrayList<ReservationBean>();
		String people = "";
		if (peopleNum >= 2 && peopleNum <= 4) {
			people = "1%";
		} else if (peopleNum >= 5 && peopleNum <= 7) {
			people = "2%";
		} else {
			people = "3%";
		}
		try {
			pstmt = conn.prepareStatement("select roomname, date, startusingtime, endusingtime, price, state, user, id, usingdate from studyDB." + type + " WHERE roomname LIKE "+"'"+ people +"' and "+"usingdate='"+usingdate+"'");
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ReservationBean bean = new ReservationBean();
				bean.setRoomname(rs.getInt("roomname"));
				bean.setDate(rs.getString("date"));
				bean.setStartusingtime(rs.getInt("startusingtime"));
				bean.setEndusingtime(rs.getInt("endusingtime"));
				bean.setPrice(rs.getInt("price"));
				bean.setState(rs.getString("state"));
				bean.setUser(rs.getString("user"));
				bean.setId(rs.getInt("id"));
				bean.setUsingdate(rs.getString("usingdate"));
				list.add(bean);
			}
			return list;
		}catch(Exception ex){
			System.out.println("getDetail 에러 : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
	
<<<<<<< Updated upstream
	public List getMyDetail(String id) throws Exception {
		List<ReservationBean> list = new ArrayList<ReservationBean>();
		try {
			pstmt = conn.prepareStatement("select * from songpa s, member m "+"where s.user=m.name and m.id ="+"'"+id+"'");
=======
	public List getAllMemberReservaiton() throws Exception {
		List<ReservationBean> list = new ArrayList<ReservationBean>();
		try {
			pstmt = conn.prepareStatement("select roomname, date, startusingtime, endusingtime, price, state, user, id, usingdate from studyDB.songpa" );
>>>>>>> Stashed changes
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ReservationBean bean = new ReservationBean();
				bean.setRoomname(rs.getInt("roomname"));
				bean.setDate(rs.getString("date"));
				bean.setStartusingtime(rs.getInt("startusingtime"));
				bean.setEndusingtime(rs.getInt("endusingtime"));
				bean.setPrice(rs.getInt("price"));
				bean.setState(rs.getString("state"));
				bean.setUser(rs.getString("user"));
				bean.setId(rs.getInt("id"));
				bean.setUsingdate(rs.getString("usingdate"));
				list.add(bean);
			}
			return list;
		}catch(Exception ex){
<<<<<<< Updated upstream
			System.out.println("getMyDetail error : " + ex);
=======
			System.out.println("getDetail 에러: " + ex);
>>>>>>> Stashed changes
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
<<<<<<< Updated upstream
	
	public boolean updateReservaton(int id) throws SQLException{
		String sql = null;

		try {
			sql = "update songpa set state=? where id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "approval");
			pstmt.setInt(2, id);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
		return false;
	}
	
=======
>>>>>>> Stashed changes
}

