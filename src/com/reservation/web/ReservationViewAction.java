package com.reservation.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.reservation.model.ReservationBean;
import com.reservation.model.ReservationDAO;


public class ReservationViewAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		ReservationBean bean = new ReservationBean();
		ReservationDAO reservationdao = new ReservationDAO();
		bean.setPeopleNum(Integer.parseInt(request.getParameter("peoplenum")));
		bean.setType(request.getParameter("type"));
		bean.setUsingdate(request.getParameter("usingdate"));
		request.setAttribute("beandata", bean);
		
		List beanlist = new ArrayList();
		beanlist = reservationdao.getDetail(bean.getType(), bean.getPeopleNum(), bean.getUsingdate());
		request.setAttribute("beanlist", beanlist);
		
		
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/reservation/reservation_view2.jsp");
		return forward;

	}
} 