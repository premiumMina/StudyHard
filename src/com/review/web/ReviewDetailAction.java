package com.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.review.model.ReviewBean;
import com.review.model.ReviewDAO;

public class ReviewDetailAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		ReviewDAO boarddao = new ReviewDAO();
		ReviewBean boarddata = new ReviewBean();

		int num = Integer.parseInt(request.getParameter("num"));
		boarddata = boarddao.getDetail(num);

		if (boarddata == null) {
			System.out.println("상세보기 실패");
			return null;
		}

		request.setAttribute("boarddata", boarddata);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/review/review_view.jsp");
		return forward;

	}
}