<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/faq.css" />
</head>
<style>
ul.tab {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/*faq 질문*/
ul.tab li a {
	display: inline-block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	transition: 0.3s;
	font-size: 17px;
}

/*faq 답변*/
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
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
		<div class="content">

			<h2>FAQ</h2>

			<hr>


			<ul class="tab">
				<li><a href="javascript:void(0)" class="tablinks"
					onclick="openQuestion(event, 'question1')">이용금액이 궁금합니다</a></li>
			</ul>
			<ul class="tab">
				<li><a href="javascript:void(0)" class="tablinks"
					onclick="openQuestion(event, 'question2')">예약은 취소가 가능한가요?</a></li>
			</ul>
			<ul class="tab">
				<li><a href="javascript:void(0)" class="tablinks"
					onclick="openQuestion(event, 'question3')">음식물 반입이 가능한가요?</a></li>
			</ul>
			<ul class="tab">
				<li><a href="javascript:void(0)" class="tablinks"
					onclick="openQuestion(event, 'question4')">예약 대기를 걸 수 있나요?</a></li>
			</ul>

			<div id="question1" class="tabcontent">
				<p>1인당 1시간에 3천원 입니다.</p>
				<p>인원이 정해져 있는 룸은 더 적은 인원이 예약하여도 정해진 인원을 기준으로 금액을 받습니다.</p>
			</div>

			<div id="question2" class="tabcontent">
				<p>예약한 시간 2시간 전에 취소가능합니다.</p>
			</div>

			<div id="question3" class="tabcontent">
				<p>가능합니다.</p>
			</div>
			
			<div id="question4" class="tabcontent">
				<p>가능합니다. 대기를 걸어 놓으면 30분 안에 취소 예약 여부를 확인할 수 있습니다.</p>
			</div>
		<hr>
	</div>
	
	<div class="footer">
				<jsp:include page="bottom1.jsp"></jsp:include>
	</div>

	<script>
		function openQuestion(evt, questionNumber) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(questionNumber).style.display = "block";
			evt.currentTarget.className += " active";
			
		}
	</script>

</body>
</html>
