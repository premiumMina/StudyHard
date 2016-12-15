<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<style>
table, td, th {
	border: 1px solid #ddd;
	text-align: left;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 15px;
}
</style>
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
			<h2>예약내역</h2>
			<hr>
			<table>
				<tr>
					<th>스터디룸</th>
					<th>사용 인원</th>
					<th>이용날짜</th>
					<th>이용시간</th>
					<th>가격</th>
					<th>예약현황</th>
					<th>예약자</th>
					<th>예약번호</th>
				</tr>
				<tr>
					<td>201</td>
					<td>5</td>
					<td>2016.12.13</td>
					<td>2</td>
					<td>5000</td>
					<td>예약됨</td>
					<td>김윤민</td>
					<td>11</td>
				</tr>
				<tr>
					<td>201</td>
					<td>5</td>
					<td>2016.12.13</td>
					<td>2</td>
					<td>5000</td>
					<td>예약됨</td>
					<td>김윤민</td>
					<td>11</td>
				</tr>
				<tr>
					<td>201</td>
					<td>5</td>
					<td>2016.12.13</td>
					<td>2</td>
					<td>5000</td>
					<td>예약됨</td>
					<td>김윤민</td>
					<td>11</td>
				</tr>
				<tr>
					<td>201</td>
					<td>5</td>
					<td>2016.12.13</td>
					<td>2</td>
					<td>5000</td>
					<td>예약됨</td>
					<td>김윤민</td>
					<td>11</td>
				</tr>
			</table>
			<h2>예약취소</h2>
			<hr>
			<h2>예약대기</h2>
			<hr>
		</div>
		<!-- 본문 끝 -->
		<div class="footer">
			<jsp:include page="bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>