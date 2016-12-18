<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<body>
   <div class="container">
      <div class="header">
         <jsp:include page="/top.jsp"></jsp:include>
      </div>
      <div class="sideinfo">
         <jsp:include page="login.jsp"></jsp:include>
      </div>
      <!-- 본문 -->
      <div class="content">
      	<br>
      	<br>
      	
      </div>
      <br>
      <br>
      <br>   
      <!-- 본문 끝 -->
      <div class="footer">
         <jsp:include page="bottom1.jsp"></jsp:include>
      </div>
   </div>
</body>
</html>