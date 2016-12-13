<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/faq.css" />
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

			<h2>FAQ</h2>

			<hr>
			<!-- 질문1 -->
				<div class="question" style="display: block">
					이용금액이 궁금합니다
				 <div class="answer" style="display: block; visibility: visible;">
				 	<p>1인당 1시간에 3천원 입니다.</p>
				 	<p>인원이 정해져 있는 룸은 더 적은 인원이 예약하여도 정해진 인원을 기준으로 금액을 받습니다.</p> 
				 </div>
				</div>
			<!-- 질문2 -->
				<div class="question" style="display: block">
					예약은 취소가 가능한가요?
				 <div class="answer" style="display: block; visibility: visible;">
				 	<p>예약한 시간 2시간 전에 취소가능합니다.</p> 
				 </div>
				</div>
			<!-- 질문3 -->
				<div class="question" style="display: block">
					음식물 반입이 가능한가요?
				 <div class="answer" style="display: block; visibility: visible;">
				 	<p>가능합니다.</p>
				 </div>
				</div>
			<!-- 질문4 -->
				<div class="question" style="display: block">
					ㅇ
				 <div class="answer" style="display: block; visibility: visible;">
				 	<p>ㅇ</p>
				 </div>
				</div>
			<!-- 질문5 -->
				<div class="question" style="display: block">
					ㅇ
				 <div class="answer" style="display: block; visibility: visible;">
				 	<p>ㅇ</p>
				 </div>
				</div>
		</div>
		<div class="footer">
         <jsp:include page="bottom.jsp"></jsp:include>
      </div>
	</div>
	
	<script>
		
	</script>
</body>
</html>