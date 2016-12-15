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

</style>
<body>
	<div class="container">
		<div class="header">
			<jsp:include page="/top.jsp"></jsp:include>
		</div>
		<div class="sideinfo">
			<jsp:include page="/login.jsp"></jsp:include>
		</div>
		<!-- 본문 -->
		<div class="content" align="center">
			<h2>예약내역</h2>
			<hr>
			<table>
				<tr>
					<th>예약번호</th>
					<th>예약자 명</th>
					<th>룸</th>
					<th>예약날짜</th>
					<th>이용시간</th>
					<th>사용 인원</th>
					<th>가격</th>
					<th>예약현황</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>완료</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>대기</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>취소</td>
				</tr>
			</table>
			<h2>예약대기</h2>
			<hr>
			<table>
				<tr>
					<th>예약번호</th>
					<th>예약자 명</th>
					<th>룸</th>
					<th>예약날짜</th>
					<th>이용시간</th>
					<th>사용 인원</th>
					<th>가격</th>
					<th>예약변경</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>
					<input type="submit" value="취소" onclick="#"> 
					<input type="submit" value="예약" onclick="#">
					</td>
				</tr>
			</table>
			<h2>예약취소</h2>
			<hr>
			<table>
				<tr>
					<th>예약번호</th>
					<th>예약자 명</th>
					<th>룸</th>
					<th>예약날짜</th>
					<th>이용시간</th>
					<th>사용 인원</th>
					<th>가격</th>
					<th>예약현황</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>취소</td>
				</tr>
			</table>
		</div>
		<br>
		<hr>
		<!-- 본문 끝 -->
		<div class="footer">
			<jsp:include page="/bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>