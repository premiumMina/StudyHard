<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script language="javascript" src="js/idfind.js"></script>
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>


<body>
	<!--전체로 묵어주는 역할을 한다-->
	<div class="container">

		<!--윗부분-->
		<div class="top">
			<jsp:include page="/top.jsp"></jsp:include>
		</div>
		
		<div>
		  	<table>
		  	<tr>
		  		<td>&nbsp;</td>
		  	</tr>
		  	</table>
		</div>
		<div class="content" align="center">
			<form name="find1" id="find1" action="idfindAction.do" method="post">
				<table width="60%" cellspacing="0" bordercolordark="white" bordercolorlight="#CCCCCC" border="1" bordercolor="#CCCCCC" align="center" height="80">

					<tr>
						<td colspan="2"><img src="/image/idfind.jpg" width="150" border=0></td>
					</tr>
					
					<tr>
						<td align="center">이름</td>
						<td><br> <input type="text" name="name" id="name" size="30" maxlength="30" style="height: 20px; border: 1px solid #ccc;"><br>
							<br>※ 본인의 정확한 성명을 입력해주세요.</td>
					</tr>
					
					<tr>
						<td align="center">핸드폰번호</td>
						<td><br><input type="text" name="phoneNum" id="phoneNum" size="30" maxlength="30" style="height: 20px; border: 1px solid #ccc;"><br><br>
					</tr>
					
					<tr>
						<td colspan="2" align="right"><br> <input type="button" value="찾 기" class="bu" onclick="idfind()"></td>
					</tr>
					
				</table>
			</form>


			<form name="find2" id="find2" action="pwfindAction.do" method="post">
				<table width="60%" cellspacing="0" bordercolordark="white" bordercolorlight="#CCCCCC" border="1" bordercolor="#CCCCCC" align="center" height="80">

					<tr>
						<td colspan="2"><img src="/image/pwfind.jpg" width="150" border=0></td>
					</tr>
					
					<tr>
						<td align="center">이름</td>
						<td><br> <input type="text" name="name" id="name" size="30" maxlength="30" style="height: 20px; border: 1px solid #ccc;"> <br>
							<br>※ 본인의 정확한 성명을 입력해주세요.</td>
					</tr>
					
					<tr>
						<td align="center">핸드폰번호</td>
						<td><br> <input type="text" name="phoneNum" id="phoneNum" size="30" maxlength="30" style="height: 20px; border: 1px solid #ccc;"><br><br>
					</tr>
					
					<tr>
						<td align="center">아이디</td>
						<td><br> <input type="text" name="id" id="id" size="30" maxlength="30" style="height: 20px; border: 1px solid #ccc;"><br><br>
					</tr>
					
					<tr>
						<td colspan="2" align="right"><br> <input type="button" value="찾 기" class="bu" onclick="pw()"></td>
					</tr>
					
				</table>
			</form>
			
		</div>
		
		<div class="footer">
			<jsp:include page="bottom1.jsp"></jsp:include>
		</div>
		
	</div>
</body>
</html>