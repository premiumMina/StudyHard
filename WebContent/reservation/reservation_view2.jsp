<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.reservation.model.*" %>
<%
	ReservationBean bean = (ReservationBean) request.getAttribute("reservationdata");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<script src="../js/reservationview.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>
<body>
	지점: <%=bean.getType() %><br>
	인원: <%=bean.getPeopleNum() %>
	달력을 호출한다.
	
</body>
</html>