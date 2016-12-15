<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.review.model.*" %>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
	List boardList = (List) request.getAttribute("boardlist");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<script src="../js/reviewcheck.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
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
			<h2>이용후기</h2>
			<hr>
			<!-- 게시판 리스트 -->
			<table>
				<tr align="center" valign="middle" bordercolor="#333333"
					bgcolor="#f7f7f7">
					<td width=70 height="26">
						<div align="center">
							<font color="gray">번호</font>
						</div>
					</td>

					<td width="510">
						<div align="center">
							<font color="gray">제목</font>
						</div>
					</td>
					<td width=70>
						<div align="center">
							<font color="gray">날짜</font>
						</div>
					</td>
					<td width=70>
						<div align="center">
							<font color="gray">글쓴이</font>
						</div>
					</td>
				</tr>

				<%
				for(int i =0; i<boardList.size(); i++){
				ReviewBean bean = (ReviewBean)boardList.get(i);
				
				%>
				<tr>
					<td>
						<%=bean.getNum() %>
					</td>
					<td>
						<a href="/ReviewDetail.rw?num=<%=bean.getNum() %>"><%=bean.getSubject() %></a>
					</td>
					<td>
						<%=bean.getDate() %>
					</td>
					<td>
						<%=bean.getId() %>
					</td>
				</tr>
				<%} %>
				
			</table>
				<br>
				<br>
				<input type="submit" value="글쓰기" onclick="javascript:location.href='/review/review_write.jsp'">
			<br>
			<hr>
		</div>
		<div class="footer">
			<jsp:include page="/bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>