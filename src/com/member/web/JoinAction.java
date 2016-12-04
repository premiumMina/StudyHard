package com.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.model.MemberBean;
import com.member.model.MemberDAO;

public class JoinAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		ActionForward forward = new ActionForward();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();

		boolean result = false;

		member.setId(request.getParameter("email"));
		member.setPassword(request.getParameter("pw1"));
		member.setName(request.getParameter("uname"));
		member.setPhoneNumber(request.getParameter("phoneNum"));

		result = memberdao.joinMember(member);

		if (result == false) {
			System.out.println("");
			return null;
		}

		forward.setRedirect(true);
		forward.setPath("main.do");
		return forward;
	}
}