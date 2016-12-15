<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8" import="com.member.model.*"%>

<%
	if (request.getAttribute("idfind") == null) {
		out.print("<script>");
		out.print("alert('회원 정보가 일치하지 않습니다.');");
		out.print("history.go(-1);");
		out.print("</script>");
	}

	MemberBean mb = (MemberBean) request.getAttribute("idfind");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css" />

</head>

<body>
	<div class="container">
		<div class="header">
			<jsp:include page="/top.jsp"></jsp:include>
		</div>

		<div class="sideinfo">
			<jsp:include page="/login.jsp"></jsp:include>
		</div>

		<div class="content" align="center">
				<br>
				<%
					if (request.getAttribute("idfind") != null) {
				%>
				<%=mb.getName()%>님의 아이디는
				<font color="blue"><%=mb.getId()%></font>
				입니다.
				<%
					}
				%>
		</div>
		<div class="footer">
			<jsp:include page="/bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>