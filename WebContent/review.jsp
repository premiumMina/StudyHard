<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
	<div class="container">
		<div class="header">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div class="sideinfo">
			<jsp:include page="login.jsp"></jsp:include>
		</div>
		<!-- 본문 -->
		<div class="content" align="center">

			<h2>회원 리뷰</h2>

			<hr>

			<form method="POST" action="/Review">
				지점 선택 : <select name="room" size="1">
					<option value="room1">송파센터</option>
					<option value="room2">돈암센터</option>
					<option value="room3">방이센터</option>
					<option value="room4">서울대입구역센터</option>
					<option value="room5">공릉센터</option>
				</select> <br> 내용 <br>
				<textarea name="review" rows="20" cols="60"></textarea>
				<br> 평점 : <input type="range" name="points" min="0" max="10"></input>
			</form>
			<input type="submit" value="제출하기">
			<div class="footer">
				<jsp:include page="bottom1.jsp"></jsp:include>
			</div>
		</div>
	</div>
</body>
</html>