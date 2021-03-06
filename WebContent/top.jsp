<%@ page language="java" contentType="text/html; charset=UTF-8=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<style>
body {
	margin: 10;
}

ul.topnav {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

ul.topnav li {
	float: left;
}

ul.topnav li a {
	display: inline-block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	transition: 0.3s;
	font-size: 17px;
}

ul.topnav li a:hover {
	background-color: #555;
}

ul.topnav li.icon {
	display: none;
}

@media screen and (max-width:680px) {
	ul.topnav li:not (:first-child ) {
		display: none;
	}
	ul.topnav li.icon {
		float: right;
		display: inline-block;
	}
}

@media screen and (max-width:680px) {
	ul.topnav.responsive {
		position: relative;
	}
	ul.topnav.responsive li.icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	ul.topnav.responsive li {
		float: none;
		display: inline;
	}
	ul.topnav.responsive li a {
		display: block;
		text-align: left;
	}
}
</style>
</head>

<body>
	<ul class="topnav" id="myTopnav">
		<li><a href="/main.do">Home</a></li>
		<li><a href="/room.jsp">StudyCafe</a></li>
		<li><a href="/reservation/reservation_view.jsp">Reservation</a></li>
		<li><a href="/ReviewList.rw">Review</a></li>
		<li><a href="UpdateAction1.do">My Page</a></li>
		<li><a href="/faq1.jsp">FAQ</a></li>
		<li class="icon"><a href="javascript:void(0);"
			style="font-size: 15px;" onclick="myFunction()">☰</a></li>
	</ul>
	
	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "topnav") {
				x.className += " responsive";
			} else {
				x.className = "topnav";
			}
		}
	</script>
</body>
</html>