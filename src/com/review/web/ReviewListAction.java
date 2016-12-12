package com.review.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.review.model.ReviewDAO;

public class ReviewListAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		HttpSession session = request.getSession();

		ReviewDAO boarddao = new ReviewDAO();
		List boardlist = new ArrayList();
		boardlist = boarddao.getBoardList();
		
		request.setAttribute("boardlist", boardlist);
		forward.setPath("/review/review_list.jsp");
		return forward;
	}
}