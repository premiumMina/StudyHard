package com.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.MemberBean;
import com.member.model.MemberDAO;

public class idfindAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberDAO memberdao = new MemberDAO();
		MemberBean member = new MemberBean();

		String name = request.getParameter("name");
		String phoneNum = request.getParameter("phoneNum");
		member = memberdao.idfind(name, phoneNum);

		request.setAttribute("idfind", member);

		forward.setRedirect(false);
		forward.setPath("/idfind_result.jsp");

		return forward;
	}
}