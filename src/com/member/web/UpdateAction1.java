package com.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.MemberBean;
import com.member.model.MemberDAO;

public class UpdateAction1 implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession(true);

		String id = (String) session.getAttribute("id");
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();
		member = memberdao.getMember(id);

		request.setAttribute("member_update", member);
		forward.setRedirect(false);
		forward.setPath("/member_update.jsp");
		return forward;
	}
}
