package com.member.web;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.MemberBean;
import com.member.model.MemberDAO;

public class LoginAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();

		member.setId(request.getParameter("id"));
		member.setPassword(request.getParameter("password"));
		int result = memberdao.isMember(member);

		if (result == 0) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다.');");
			out.println("location.href='main.do';");
			out.println("</script>");
			out.close();
			return null;
		} else if (result == -1) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디가 존재하지 않습니다.');");
			out.println("location.href='login.do';");
			out.println("</script>");
			out.close();
			return null;
		}

		// 로그인 성공.
		session.setAttribute("id", member.getId());
		member = memberdao.getMember(request.getParameter("id"));
		session.setAttribute("name", member.getName());
		forward.setRedirect(true);
		forward.setPath("main.do");

		return forward;
	}
}