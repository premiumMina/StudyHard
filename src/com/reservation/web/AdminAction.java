package com.reservation.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.reservation.model.ReservationBean;
import com.reservation.model.ReservationDAO;

public class AdminAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		ReservationBean bean = new ReservationBean();
		ReservationDAO reservationdao = new ReservationDAO();
		
		List memberlist = new ArrayList();
		memberlist = reservationdao.getAllMemberReservaiton();
		request.setAttribute("memberlist", memberlist);
		
		forward.setPath("/admin.jsp");
		return forward;

	}
} 