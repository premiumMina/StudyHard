package com.reservation.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reservation.model.ReservationBean;
import com.reservation.model.ReservationDAO;

public class MyReservationAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		ReservationBean bean = new ReservationBean();
		ReservationDAO reservationdao = new ReservationDAO();
		
		String id = request.getParameter("id");
		List mylist = new ArrayList();
		mylist = reservationdao.getMyDetail(id);
		
		request.setAttribute("mylist", mylist);
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/myreservation.jsp");
		return forward;

	}
}