package com.reservation.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reservation.model.ReservationBean;
import com.reservation.model.ReservationDAO;
import com.reservation.web.Action;
import com.reservation.web.ActionForward;

public class ReservationUpdate1 implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		ReservationBean bean = new ReservationBean();
		ReservationDAO reservationdao = new ReservationDAO();
		
		int id = Integer.parseInt(request.getParameter("num"));
		boolean result = reservationdao.updateApproval(id);
		
		if(result==false){
			System.out.println("예약 취소 오류");
		}
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/main.do");
		return forward;
	}
}
