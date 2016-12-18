<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="js/idfind.js"></script>
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>


<body>
	<!--전체로 묵어주는 역할을 한다-->
	<div class="container">
		<div class="header">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div class="sideinfo">
			<jsp:include page="login.jsp"></jsp:include>
		</div>
		<!-- 본문 -->
		<div class="content">
			<h3>◆ 아이디 찾기</h3>
			<hr>
			<form name="find1" id="find1" action="IdfindAction.do" method="post">
				<table>
					<tr>
						<td align="center" bgcolor="#EFEEEE">이름</td>
						<td><br> <input type="text" name="name" id="name"
							size="30" maxlength="30"
							style="height: 20px; border: 1px solid #ccc;"><br> <br>※
							본인의 정확한 성명을 입력해주세요.</td>
					</tr>

					<tr>
						<td align="center" bgcolor="#EFEEEE">핸드폰번호</td>
						<td><br>
						<input type="text" name="phoneNum" id="phoneNum" size="30"
							maxlength="30" style="height: 20px; border: 1px solid #ccc;"><br>
						<br>
					</tr>
				</table>
				<br> <input type="button" value="찾 기" class="bu"
					onclick="idfind()">
			</form>

			<br>

			<h3>◆ 비밀번호 찾기</h3>
			<hr>
			<form name="find2" id="find2" action="PwfindAction.do" method="post">

				<table>
					<tr>
						<td align="center" bgcolor="#EFEEEE">이름</td>
						<td><br> <input type="text" name="name" id="name"
							size="30" maxlength="30"
							style="height: 20px; border: 1px solid #ccc;"> <br>
							<br>※ 본인의 정확한 성명을 입력해주세요.</td>
					</tr>

					<tr>
						<td align="center" bgcolor="#EFEEEE">핸드폰번호</td>
						<td><br> <input type="text" name="phoneNum"
							id="phoneNum" size="30" maxlength="30"
							style="height: 20px; border: 1px solid #ccc;"><br>
						<br>
					</tr>

					<tr>
						<td align="center" bgcolor="#EFEEEE">아이디</td>
						<td><br> <input type="text" name="id" id="id" size="30"
							maxlength="30" style="height: 20px; border: 1px solid #ccc;"><br>
						<br>
					</tr>
				</table>
				<br> <input type="button" value="찾 기" class="bu" onclick="pw()">
			</form>
			<br>
			<hr>

		</div>

		<div class="footer">
			<jsp:include page="bottom1.jsp"></jsp:include>
		</div>

	</div>
</body>
</html>