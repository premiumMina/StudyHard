<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="./css/style.css" />
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