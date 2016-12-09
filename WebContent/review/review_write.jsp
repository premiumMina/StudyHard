<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="../js/reviewcheck.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
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
			<form method="POST" action="/ReviewWrite.rw" id="listup">
				<label>작성자 : <%=name%><input type="hidden" id="name" name="name" value="<%=name%>" /></label><br> 
				지점 선택 : 
				<select name="room" id="room" size="1">
					<option value="room1">송파센터</option>
					<option value="room2">돈암센터</option>
					<option value="room3">방이센터</option>
					<option value="room4">서울대입구역센터</option>
					<option value="room5">공릉센터</option>
					<option value="room6">문의사항</option>
				</select> <br> 제목 <br>
				<textarea id="subject" name="subject" cols="60"></textarea>
				<br> 내용 <br>
				<textarea id="content" name="content" rows="20" cols="60"></textarea>
				<br> 평점(10점 만점기준) : 
				<input type="range" id="points" name="points" min="0" max="10"> 
				<input type="button" value="제출하기" onclick="check()" />
			</form>
			
			<input type="button" value="목록">
		</div>
		<div class="footer">
			<jsp:include page="../bottom.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>