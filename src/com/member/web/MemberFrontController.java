package com.member.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberFrontController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action = null;

		if (command.equals("/main.do")) { // 시작페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("main.jsp");

		} else if (command.equals("/join.do")) { // 회원가입 페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/member_join.jsp");

		} else if (command.equals("/idfind.do")) { // 회원가입 페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/idfind.jsp");

		} else if (command.equals("/login.do")) { // 로그인 후 페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("login.jsp");

		} else if (command.equals("/idcheck.do")) { // 아이디 중복체크 페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/idcheck.jsp");

		} else if (command.equals("/Logout.do")) { // 로그아웃 페이지
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/member_logout.jsp");

		} else if (command.equals("/LoginAction.do")) { // 로그인 액션
			action = new LoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/JoinAction.do")) { // 회원가입 액션
			action = new JoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/IdfindAction.do")) { // 회원가입 액션
			action = new IdfindAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/PwfindAction.do")) { // 회원가입 액션
			action = new PwfindAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/UpdateAction1.do")) { // 회원 수정 페이지에서 회원정보
			action = new UpdateAction1();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/UpdateAction2.do")) { // 회원정보수정 액션
			action = new UpdateAction2();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}

		if (forward.isRedirect()) {
			response.sendRedirect(forward.getPath());
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}
}