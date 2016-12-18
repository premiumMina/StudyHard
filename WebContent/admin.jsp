<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.reservation.model.*" %>
<%@ page import="java.util.*" %>
<%
	List memberList = (List) request.getAttribute("memberlist");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<style>

</style>
<body>
	<div class="container">
		<div class="header">
			<jsp:include page="/top.jsp"></jsp:include>
		</div>
		<div class="sideinfo">
			<jsp:include page="/login.jsp"></jsp:include>
		</div>
		<!-- 본문 -->
		<div class="content" align="center">
			<h2>예약내역</h2>
			<hr>
				<table>
				<tr>
					<th>예약번호</th>
					<th>룸</th>
					<th>사용날짜</th>
					<th>가격</th>
					<th>예약현황</th>
					<th>예약자 명</th>
					
					
				</tr>
				<%
					for (int i = 0; i < memberList.size(); i++) {
						ReservationBean bean = (ReservationBean) memberList.get(i);
					%>
				<tr>
					<td><%=bean.getId()%></td>
					<td><%=bean.getRoomname()%></td>
					<td><%=bean.getDate() %></td>
					<td><%=bean.getPrice() %></td>
					<td><%=bean.getState()%></td>
					<td><%=bean.getUser()%></td>
				</tr>
				<%
					}
				%> 
			</table>
			<h2>예약대기</h2>
			<hr>
			<table>
				<tr>
					<th>예약번호</th>
					<th>룸</th>
					<th>사용날짜</th>
					<th>가격</th>
					<th>예약현황</th>
					<th>예약자 명</th>
				</tr>
				<%
					for (int i = 0; i < memberList.size(); i++) {
						ReservationBean bean = (ReservationBean) memberList.get(i);
						if (bean.getState().equals("waiting")) {
				%>
				<tr>
					<td><%=bean.getId()%></td>
					<td><%=bean.getRoomname()%></td>
					<td><%=bean.getDate()%></td>
					<td><%=bean.getPrice()%></td>
					<td><%=bean.getState()%></td>
					<td><%=bean.getUser()%></td>
				</tr>
				<%
					}
					}
				%>
			</table>
			<h2>예약취소</h2>
			<hr>
			<table>
				<tr>
					<th>예약번호</th>
					<th>룸</th>
					<th>사용날짜</th>
					<th>가격</th>
					<th>예약현황</th>
					<th>예약자 명</th>
					
					
				</tr>
				<%
					for (int i = 0; i < memberList.size(); i++) {
						ReservationBean bean = (ReservationBean) memberList.get(i);
						if (bean.getState().equals("cancel")) {
					%>
				<tr>
					<td><%=bean.getId()%></td>
					<td><%=bean.getRoomname()%></td>
					<td><%=bean.getDate() %></td>
					<td><%=bean.getPrice() %></td>
					<td><%=bean.getState()%></td>
					<td><%=bean.getUser()%></td>
				</tr>
				<%
					}
					}
				%> 
			</table>
		</div>
		<br>
		<hr>
		<!-- 본문 끝 -->
		<div class="footer">
			<jsp:include page="/bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>