<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<div id="#container">
		<div id="header">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div id="sideinfo">
			<jsp:include page="left.jsp"></jsp:include>
		</div>
		<!-- 본문 -->
		<div id="content" align="center">
			<img src="./image/intro_room.jpg">
		</div>
		<!-- 본문 끝 -->
		<div id="footer">
			<jsp:include page="bottom.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>