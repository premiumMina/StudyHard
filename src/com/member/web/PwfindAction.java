package com.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.MemberBean;
import com.member.model.MemberDAO;

public class PwfindAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String phoneNum = request.getParameter("phoneNum");
		member = memberdao.pwfind(name, id, phoneNum);

		request.setAttribute("pwfind", member);
		forward.setRedirect(false);
		forward.setPath("/pwfind_result.jsp");

		return forward;
	}
}