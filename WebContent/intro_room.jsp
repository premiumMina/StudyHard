<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<div class="container1">
        <div class="row">
            <div class="col-lg-12">
                <h2>지점 안내</h2>
            </div>
        </div>

      <hr>
      
       <div class="row">
         <div class="col-md-7">
                <img class="img-responsive" src="./image/room1.JPG">
            </div>
            <div class="col-md-5">
                <h3>송파센터</h3>
                <h4>02-3432-0303</h4>
                   <ul>
                      <li>서울시 송파구 송이로 31 (송파동 164-8 한길빌딩 4~5층)</li>
                  <li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
               </ul>
                <input type="button" name="map" value="위치확인하기" onclick="window.open('http://map.naver.com/local/siteview.nhn?code=21202202')">
            </div>
        </div>

      <hr>

        <div class="row">
         <div class="col-md-7">
                <img class="img-responsive" src="./image/room2.JPG">
            </div>
            <div class="col-md-5">
                <h3>돈암센터</h3>
                <h4>02-928-2070</h4>
                   <ul>
                      <li>서울시 성북구 정릉로 376 (돈암동 625-2) 8층</li>
                  <li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
               </ul>
                <input type="button" name="map" value="위치확인하기" onclick="window.open('http://map.naver.com/local/siteview.nhn?code=37101530')">
            </div>
        </div>

        <hr>

        <!-- Project Three -->
        <div class="row">
             <div class="col-md-7">
                <img class="img-responsive" src="./image/room3.JPG">
            </div>
            <div class="col-md-5">
                <h3>방이센터</h3>
                <h4>02-2043-0202</h4>
                   <ul>
                      <li>서울시 송파구 마천로 76 성암빌딩 4층(오금동 41-23)</li>
                      <li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
                   </ul>
                <input type="button" name="map" value="위치확인하기" onclick="window.open('http://map.naver.com/local/siteview.nhn?code=36105496')">
            </div>
        </div>

        <hr>

        <div class="row">
            <div class="col-md-7">
                <img class="img-responsive" src="./image/room4.JPG">
            </div>
            <div class="col-md-5">
                <h3>서울대입구역센터</h3>
                <h4>02-882-7090</h4>
                   <ul>
                      <li>서울특별시 관악구 관악로 223 (봉천동 34-51) 도암빌딩 5층~6층</li>
                      <li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
                   </ul>
                <input type="button" name="map" value="위치확인하기" onclick="window.open('http://map.naver.com/local/siteview.nhn?code=37445434')">   
            </div>
        </div>

        <hr>

        <div class="row">
            <div class="col-md-7">
                <img class="img-responsive" src="./image/room5.JPG">
            </div>
            <div class="col-md-5">
                <h3>공릉센터</h3>
                <h4>02-977-0207</h4>
                   <ul>
                      <li>서울특별시 노원구 공릉로46길 6 (공릉동 421-19) 4층</li>
                      <li>월~토 09:00 ~ 02:00 / 일 09:00 ~ 01:00(휴무일 별도공지)</li>
                   </ul>
                <input type="button" name="map" value="위치확인하기" onclick="window.open('http://map.naver.com/local/siteview.nhn?code=37642852')">
            </div>
        </div>
      
      <hr>
</div> 
		</div>
		<!-- 본문 끝 -->
		<div class="footer">
			<jsp:include page="bottom.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>