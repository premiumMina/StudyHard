<%@ page language="java" contentType="text/html; charset=EUC-KR"    pageEncoding="UTF-8"%><%
	String id = (String)session.getAttribute("id");
	
	if(id==null){
		response.sendRedirect("login.do");
	}else{
		session.invalidate();
		response.sendRedirect("login.do");
	}
%>