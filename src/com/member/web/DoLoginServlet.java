package com.member.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.DBUtil;


@WebServlet("/doLogin")
public class DoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DoLoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 세션 객체 생성
		HttpSession session = request.getSession();
		// 세션 초기화
		session.removeAttribute("id");
		session.removeAttribute("isWrongPassword");

		if (session.getAttribute("id") != null) {
			session.removeAttribute("id");
			response.sendRedirect("login.jsp");
		} else {
			// 아이디, 패스워드 저장
			String uid = request.getParameter("uid");
			String passwd = request.getParameter("passwd");

			ServletContext sc = getServletContext();
			Connection conn = (Connection) sc.getAttribute("DBconnection");

			ResultSet rs = DBUtil.findUser(conn, uid);

			if (rs != null) {
				try {
					if (rs.next()) {
						String checkpw = rs.getString(1);
						if (checkpw.equals(passwd)) {
							// 아이디와 비밀번호가 일치할 경우
							session.setAttribute("id", uid);

						} else {
							// 비밀번호 오류
							session.setAttribute("id", uid);
							session.setAttribute("isWrongPassword", true);
						}
					}
					// 아이디가 존재하지 않는 경우
					response.sendRedirect("/result.jsp");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
	
	}

}
