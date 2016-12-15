package com.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.review.model.ReviewBean;
import com.review.model.ReviewDAO;

public class ReviewAddAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ReviewDAO boarddao = new ReviewDAO();
		ReviewBean board = new ReviewBean();
		ActionForward forward = new ActionForward();

		boolean result = false;

		try {
			request.setCharacterEncoding("UTF-8");

			board.setId(request.getParameter("name"));
			board.setType(request.getParameter("room"));
			board.setSubject(request.getParameter("subject"));
			board.setContent(request.getParameter("content"));
			board.setStar(request.getParameter("points"));
			

			result = boarddao.boardInsert(board);

			if (result == false) {
				System.out.println("게시판 등록 실패");
				return null;
			}
			System.out.println("게시판 등록 완료");

			forward.setRedirect(true);
			forward.setPath("/ReviewList.rw");
			return forward;

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
}
