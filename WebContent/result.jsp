<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
		if (session.getAttribute("isWrongPassword") != null) {
	%>
	비밀번호 틀립니다.

	<form action="HomeLoginServlet" method="post">
		<input type="submit" value="다시입력">
	</form>

	<form action="/FindPwd" method="post">
		<input type="submit" name="logout" value="비밀번호찾기">
	</form>
	
	<%
		} else if (session.getAttribute("id") == null) {
	%>
	아이디가 존재하지 않습니다.
	
	<form action="/SignUpServlet" method="post">
		<input type="submit" name="logout" value="회원가입">
	</form>
	
	<%
		} else {
	%>
	<%=session.getAttribute("id")%>
	님이 로그인되었습니다.
	
	<form action="/login.jsp" method="post">
		<input type="submit" name="logout" value="로그아웃">
	</form>

	<%
		}
	%>
</body>
</html>