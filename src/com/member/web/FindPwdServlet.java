package com.member.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.DBUtil;


@WebServlet("/FindPwd")
public class FindPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FindPwdServlet() { super(); }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션에 저장된 아이디 꺼내서 비밀번호 가져오기
		HttpSession session = request.getSession();
		String uid = (String) session.getAttribute("id");
		ServletContext sc = getServletContext();
		Connection conn = (Connection) sc.getAttribute("DBconnection");
		ResultSet rs = DBUtil.findUser(conn, uid);

		try {
			if (rs != null) {
				if (rs.next()) {
					String pw = rs.getString(1);
					session.setAttribute("pwd", pw);
					response.sendRedirect("/findPassword.jsp");
				}
			}

		} catch (Exception e) {

		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
