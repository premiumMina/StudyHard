<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<form method="post" action="/doLogin">
		ID :<input type="text" name="uid" /><br> 
		PW :<input type="password" name="passwd" />
		<input type="submit" value="로그인" />
	</form>
</body>
</html>