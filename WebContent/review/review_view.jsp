<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.review.model.*"%>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
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
				<label>작성자 : <%=name%><input type="hidden" id="name" name="name" value="<%=name%>" /></label><br> 
				지점 선택 : <%=board.getType() %>
				<br> 내용 <br>
				<hr>
				<%=board.getContent()%>
				<br> 평점(10점 만점기준) : <%=board.getStar() %>
			
			<input type="button" value="목록" onclick="javascript:location.href='/ReviewList.rw'">
		</div>
		<div class="footer">
			<jsp:include page="../bottom.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>