package com.reservation.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.reservation.web.ActionForward;
import com.reservation.model.ReservationBean;
import com.reservation.model.ReservationDAO;

public class ReservationRoomAction implements Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		ReservationBean bean = new ReservationBean();
		ReservationDAO reservationdao = new ReservationDAO();

		boolean result = false;
		try {
			request.setCharacterEncoding("UTF-8");
			bean.setPeopleNum(Integer.parseInt(request.getParameter("peoplenum")));
			bean.setType(request.getParameter("type"));
			bean.setRoomname(Integer.parseInt(request.getParameter("room")));
			bean.setStartusingtime(Integer.parseInt(request.getParameter("startusingtime")));
			bean.setEndusingtime(Integer.parseInt(request.getParameter("endusingtime")));
			bean.setState(request.getParameter("state"));
			bean.setPrice(Integer.parseInt(request.getParameter("price")));
			bean.setUser(request.getParameter("name"));
			bean.setUsingdate(request.getParameter("usingdate"));
			
			result = reservationdao.reservationInsert(bean);

			if (result == false) {
				System.out.println("오류발생");
				return null;
			}

			forward.setRedirect(true);
			forward.setPath("/main.do");
			return forward;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;

	}
} 