package com.review.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReviewDAO {
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;

	public ReviewDAO() {
		DBUtil db = new DBUtil();
		conn = db.getConnection();
	}

	public boolean boardInsert(ReviewBean board) {
		int num = 0;
		String sql = "";
		int result = 0;

		try {
			pstmt = conn.prepareStatement("select max(num) from reviewboard");
			rs = pstmt.executeQuery();

			if (rs.next())
				num = rs.getInt(1) + 1;
			else
				num = 1;

			sql = "insert into reviewboard (num,id,type,";
			sql += "subject,content,readcount," + "star,date) values(?,?,?,?,?,?,?,now())";

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, board.getId());
			pstmt.setString(3, board.getType());
			pstmt.setString(4, board.getSubject());
			pstmt.setString(5, board.getContent());
			pstmt.setInt(6, num);
			pstmt.setString(7, board.getStar());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception ex) {
			System.out.println("boardInsert 에러 : " + ex);
		} finally {
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(pstmt!=null) try{pstmt.close();}catch(SQLException ex){}
		}
		return false;
	}

	public List getBoardList() {
		List<ReviewBean> list = new ArrayList<ReviewBean>();
		pstmt= null;
		String sql = "SELECT id, num, subject, content, star";
		sql += ",date FROM studyDB.reviewboard ORDER BY date DESC";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				ReviewBean board = new ReviewBean();
				board.setId(rs.getString(1));
				board.setNum(rs.getInt(2));
				board.setSubject(rs.getString(3));
				board.setContent(rs.getString(4));
				board.setStar(rs.getString(5));
				board.setDate(rs.getDate(6));
				list.add(board);
			}
			
			return list;
			
		} catch (Exception ex) {
			System.out.println("getBoardList 에러 : " + ex);
		}finally{
			if(rs!=null) try{rs.close();}catch(SQLException ex){}
			if(stmt!=null) try{stmt.close();}catch(SQLException ex){}
		}
		return null;
	}

	public ReviewBean getDetail(int num) throws Exception{
		ReviewBean board = null;
		try{
			pstmt = conn.prepareStatement("select * from reviewboard where num = ?");
			pstmt.setInt(1, num);
			
			rs= pstmt.executeQuery();
			
			if(rs.next()){
				board = new ReviewBean();
				board.setNum(rs.getInt("num"));
				board.setType(rs.getString("type"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setDate(rs.getDate("date"));
				board.setId(rs.getString("id"));
				board.setStar(rs.getString("star"));
			}
			
			return board;
		}catch(Exception ex){
			System.out.println("getDetail error : " + ex);
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException ex){}
			if(pstmt !=null)try{pstmt.close();}catch(SQLException ex){}
		}
		return null;
	}
}
