package com.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public MemberDAO() {
			DBUtil db = new DBUtil();
			conn = db.getConnection();
	}
	
	public int isMember(MemberBean member) {
		String sql = "SELECT password FROM member WHERE id=?";
		int result = -1;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				if (rs.getString("password").equals(member.getPassword())) {
					result = 1;

				} else {
					result = 0;
				}
			} else {
				result = -1;
			}
		} catch (Exception ex) {
			System.out.println("isMember 에러: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}
		return result;
	}

	public MemberBean idfind(String name, String phoneNum) {
		String sql = "SELECT id FROM member WHERE name=? and phoneNum=?";
		MemberBean member = new MemberBean();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, phoneNum);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				member.setName(name);
				member.setId(rs.getString(1));
				return member;
			}

		} catch (Exception ex) {
			System.out.println("idfind 에러: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}

		return null;
	}

	public MemberBean pwfind(String name, String id, String phoneNum) {

		String sql = "SELECT password FROM member WHERE name=? and id=? and phoneNum=?";
		MemberBean member = new MemberBean();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, id);
			pstmt.setString(3, phoneNum);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				member.setName(name);
				member.setPassword(rs.getString(1));
				return member;
			}

		} catch (Exception ex) {
			System.out.println("pwfind 에러: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}

		return null;
	}

	public boolean joinMember(MemberBean member) {
		String sql = "INSERT INTO member (id, password, name, phoneNum) VALUES (?,?,?,?)";
		int result = 0;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getPhoneNumber());

			result = pstmt.executeUpdate();

			if (result != 0) {
				return true;
			}
		} catch (Exception ex) {
			System.out.println("joinMember 에러: " + ex);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
		}

		return false;
	}

	public boolean updateMember(MemberBean member) throws SQLException {
		String sql = null;

		try {
			sql = "update member set password=?, phoneNum=?,name=? where id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getPhoneNumber());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getId());
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
	
	public MemberBean getMember(String id) throws SQLException{
		MemberBean mb=null;
		String sql=null;
				
		try{
			sql="select * from member where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				mb=new MemberBean();
				mb.setId(rs.getString("id"));
				mb.setPassword(rs.getString("password"));
				mb.setName(rs.getString("name"));
				mb.setPhoneNumber(rs.getString("phoneNum"));
						
				return mb;
			}
						
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt != null){ pstmt.close(); }
			if(rs != null){ rs.close(); }
			
		}
		
		return null;
	}
}
