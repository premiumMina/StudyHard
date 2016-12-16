<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/login.css" />
<script src="../js/reservationview.js"></script>
</head>
<body>
	<%
		if (id == null || id.equals(null)) {
	%>
	<form action="LoginAction.do" method="post" name="loginform">
		<div class="container">
			<label><b>ID</b></label> <input type="text" placeholder="ID를 입력하세요"
				name="id" id="id" required> <label><b>Password</b></label> <input
				type="password" id="password" placeholder="Password를 입력하세요"
				name="password" required>

			<button type="submit">Login</button>
		</div>
	</form>

	<div class="container">
		<form action="join.do" method="post">
			<button type="submit">SignUp</button>
		</form>
		<span>Forgot <a href="/idfind.do">password?</a></span>
	</div>

	<%
		} else {
	%>
	<div class="container">
		<%
			if (id.equals("admin")) {
		%>
		<a href="admin.jsp" target="_parent">[관리자모드]</a><br>
		<%
		}
			%>
		<label><b><%=name%> 님 반갑습니다.</b></label><br>
		<input type="hidden" id="id" value="<%=id %>">	

		<form action="/Logout.do" method="post">
			<button type="submit">Logout</button>
		</form>
		
		<a href="/MyReservation.rv?id=<%=id%>"><button type="submit">My Reservation</button></a>
	</div>

	<%
		}
	%>
</body>
</html>