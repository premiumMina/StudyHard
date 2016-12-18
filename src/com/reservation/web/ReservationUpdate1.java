package com.reservation.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.reservation.model.ReservationBean;
import com.reservation.model.ReservationDAO;

public class ReservationUpdate1 implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		ReservationBean bean = new ReservationBean();
		ReservationDAO reservationdao = new ReservationDAO();
		
		int id = Integer.parseInt(request.getParameter("num"));
		boolean result = reservationdao.updateReservaton(id);
		
		if(result==false){
			System.out.println("예약 취소 오류");
		}
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/main.do");
		return forward;

	}
}
