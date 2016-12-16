<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.reservation.model.*" %>
<%
	String name = (String) session.getAttribute("name");
	List myList = (List) request.getAttribute("mylist");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<title>STUDYHARD에 오신걸 환영합니다.</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<jsp:include page="/top.jsp"></jsp:include>
		</div>
		<div class="sideinfo">
			<jsp:include page="login.jsp"></jsp:include>
		</div>
		<!-- 본문 -->
		<div class="content">
			<h2>예약내역</h2>
			<hr>
			<table>
				<tr>
					<th>예약번호</th>
					<th>룸</th>
					<th>사용날짜</th>
					<th>가격</th>
					<th>예약현황</th>
				</tr>
				<%
					for (int i = 0; i < myList.size(); i++) {
						ReservationBean bean = (ReservationBean) myList.get(i);
				%>
				<tr>
					<td><%=bean.getId()%></td>
					<td><%=bean.getRoomname()%></td>
					<td><%=bean.getUsingdate()%></td>
					<td><%=bean.getPrice()%></td>
					<td><%=bean.getState()%></td>
				</tr>
				<%
					}
				%>

			</table>
		</div>
		<br> <br> <br>
		<!-- 본문 끝 -->
		<div class="footer">
			<jsp:include page="bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>