<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.review.model.*"%>
<%
	ReviewBean board = (ReviewBean) request.getAttribute("boarddata");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
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
			<h2>회원 리뷰</h2>
			<hr>
			<table id="reverse">
			<tr>
				<td width="80">작성자 </td>
				<td> <%=board.getId()%></td>
			</tr>
			<tr>
				<td>지점 선택 </td> 
				<td><%=board.getType() %></td>
			</tr>
			<tr>
				<td><br> 내용 <br></td>
				<td><%=board.getContent()%></td>
			</tr>
				<td> 평점(10점 만점기준)</td> 
				<td><%=board.getStar() %></td>
			<tr>
			</table>
			<input type="button" value="목록" onclick="javascript:location.href='/ReviewList.rw'">
		</div>
		<div class="footer">
			<jsp:include page="/bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>