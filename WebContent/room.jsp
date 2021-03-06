<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<body>

	<div class="container">
		<div class="header">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div class="sideinfo">
			<jsp:include page="login.jsp"></jsp:include>
		</div>
		<div class="content">

			<h2>지점 안내</h2>
			<hr>

			<table>
				<tr>
					<td><img class="img-responsive" src="./image/room1.JPG"></td>
					<td>
						<h3>송파센터</h3>
						<h4>02-3432-0303</h4>
						<ul>
							<li>서울시 송파구 송이로 31 (송파동 164-8 한길빌딩 4~5층)</li>
							<li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
						</ul> <input type="button" name="map" value="위치확인하기"
						onclick="window.open('http://map.naver.com/local/siteview.nhn?code=21202202')">
					</td>
				</tr>
				
			</table>
			
			<hr>
			
			<table>
				<tr>
					<td><img class="img-responsive" src="./image/room2.JPG"></td>
					<td>
						<h3>돈암센터</h3>
						<h4>02-928-2070</h4>
						<ul>
							<li>서울시 성북구 정릉로 376 (돈암동 625-2) 8층</li>
							<li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
						</ul> <input type="button" name="map" value="위치확인하기"
						onclick="window.open('http://map.naver.com/local/siteview.nhn?code=37101530')">
					</td>
				</tr>
			</table>
			
			<hr>
			
			<table>
				<tr>
					<td><img class="img-responsive" src="./image/room3.JPG"></td>
					<td>
						<h3>방이센터</h3>
						<h4>02-2043-0202</h4>
						<ul>
							<li>서울시 송파구 마천로 76 성암빌딩 4층(오금동 41-23)</li>
							<li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
						</ul> <input type="button" name="map" value="위치확인하기"
						onclick="window.open('http://map.naver.com/local/siteview.nhn?code=36105496')">
					</td>
				</tr>
			</table>
			
			<hr>
			
			<table>
				<tr>
					<td><img class="img-responsive" src="./image/room4.JPG"></td>
					<td>
						<h3>서울대입구역센터</h3>
						<h4>02-882-7090</h4>
						<ul>
							<li>서울특별시 관악구 관악로 223 (봉천동 34-51) 도암빌딩 5층~6층</li>
							<li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
						</ul> <input type="button" name="map" value="위치확인하기"
						onclick="window.open('http://map.naver.com/local/siteview.nhn?code=37445434')">
					</td>
				</tr>
			</table>
			
			<hr>
			
			<table>
				<tr>
					<td><img class="img-responsive" src="./image/room5.JPG"></td>
					<td>
						<h3>공릉센터</h3>
						<h4>02-977-0207</h4>
						<ul>
							<li>서울특별시 노원구 공릉로46길 6 (공릉동 421-19) 4층</li>
							<li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
						</ul> <input type="button" name="map" value="위치확인하기"
						onclick="window.open('http://map.naver.com/local/siteview.nhn?code=37642852')">
					</td>
				</tr>
			</table>

			<hr>
		</div>
		<div class="footer">
			<jsp:include page="bottom1.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
