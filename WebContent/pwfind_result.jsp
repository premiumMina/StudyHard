<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.member.model.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	if (request.getAttribute("pwfind") == null) {
		out.print("<script>");
		out.print("alert('회원 정보가 일치하지 않습니다.');");
		out.print("history.go(-1);");
		out.print("</script>");
	}

	MemberBean mb = (MemberBean) request.getAttribute("pwfind");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="./css/style.css" />

</head>

<body>
	<!--전체로 묵어주는 역할을 한다-->
	<div class="container">

		<!--윗부분-->
		<div class="header">
			<jsp:include page="/top.jsp"></jsp:include>
		</div>

		<div class="sideinfo">
			<jsp:include page="/login.jsp"></jsp:include>
		</div>

		<div class="content">
			<center>
				<br>
				<%
					if (request.getAttribute("pwfind") != null) {
				%>
				<%=mb.getName()%>님의 패스워드는
				<font color="blue"><%=mb.getPassword()%></font>
				입니다.
				<%
					}
				%>
			</center>
		</div>
		<div class="footer">
			<jsp:include page="/bottom.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>