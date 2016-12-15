<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.reservation.model.*" %>
<%
	String name = (String) session.getAttribute("name");
	if (name == "" || name == null) {
		out.println("<script>");
		out.println("alert('로그인 후 이용해주세요.');");
		out.println("location.href='/main.do';");
		out.println("</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<script src="../js/reservationview.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.23/themes/base/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/ui/1.8.23/jquery-ui.js"></script>
<link rel="stylesheet"
	href="http://jqueryui.com/resources/demos/style.css">
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
</head>
<body>
	<div class="container">
		<div class="header">
			<jsp:include page="../top.jsp"></jsp:include>
		</div>

		<div class="sideinfo">
			<jsp:include page="../login.jsp"></jsp:include>
		</div>
		
		<div class="content">
			<h2>예약하기</h2>
			<hr>
			지점 :
			<select name="type" id="type" size="1">
				<option value="songpa">송파센터</option>
				<option value="don">돈암센터</option>
				<option value="방이">방이센터</option>
				<option value="서울대입구">서울대입구역센터</option>
				<option value="공릉">공릉센터</option>
				<option value="문의">문의사항</option>
			</select> 
			인원 :
			<input type="text" id="peoplenum" name="peoplenum" style="height:10px; width:80px">
			<br>
			<b>예약 날짜를 선택하세요.</b>
			<input type="text" id="datepicker" name="datepicker">
			<input type="button" value="예약가능여부 확인하기" onclick="show()" >
			<hr>
			<div id="result"></div>
		</div>
		
		<div class="footer">
			<jsp:include page="/bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>