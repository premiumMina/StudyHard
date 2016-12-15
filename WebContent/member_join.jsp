<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="./css/style.css" />
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="./js/check.js"></script>
<script type="text/javascript">

function next(arg, len, nextname) {
	if ($(arg).val().length == len) {
		nextname.focus();
		return;
	}
}
</script>
</head>

<body>
	<div class="container">
		<div class="header">
			<jsp:include page="./top.jsp"></jsp:include>
		</div>

		<div class="sideinfo">
			<jsp:include page="./login.jsp"></jsp:include>
		</div>

		<div class="content" align="center">
			<table>
				<tr>
					<td>2001년 4월 27일부터 2001년 1월 26일 개정 공포된 주민등록법에 따라 주민등록 생성기를
						이용하거나 다른이의 주민등록번호를 도용하여 인터넷서비스에 가입하는 이용자의 경우 3년이하의 징역 또는 1천만원 이하의
						벌금에 처해지게 되므로 실명 기재에 유의 하시기 바랍니다.</td>
				</tr>
			</table>
			<br>
			<form action="/JoinAction.do" method="post" name="join" id="join">
				<table>
					<tr>
						<td bgcolor="#EFEEEE">¤&nbsp;E-MAIL</td>
						<td>
							<p>
								<input type="text" name="email" id="email" size="30" maxlength="30" style="height: 20px; border: 1px solid #ccc;">
								<img src="../image/btn_check_id.gif" onclick="checkEvents()" border=0 style="cursor: hand;"><br>
								<input type="hidden" name ="idcheck" id = "idcheck" ><br>
									※ 본인의 정확한 이메일을 입력해주세요.
							</p>
						</td>
					</tr>
					<tr>
						<td bgcolor="#EFEEEE">¤&nbsp;패스워드</td>
						<td>
							<p>
								<input type="password" name ="pw1" id ="pw1" size="20" maxlength="12" style="height: 20px; border: 1px solid #ccc;"><br>
								※ 4~12자 이하로 입력합니다.
							</p>
						</td>
					</tr>
					<tr>
						<td bgcolor="#EFEEEE">¤&nbsp;패스워드확인</td>
						<td>
							<p>
								<input type="password" name = "pw2" id = "pw2" size="20" maxlength="12" style="height: 20px; border: 1px solid #ccc;"><br>
								※ 앞에서 입력하신 비밀번호를 한번 더 입력합니다.
							</p>
						</td>
					</tr>
					<tr>
						<td bgcolor="#EFEEEE">¤&nbsp;이름</td>
						<td>
							<p>
								<input type="text" name="uname" id="uname" size="20" maxlength="12" style="width: 150px; height: 20px; border: 1px solid #ccc;">
							</p>
						</td>
					</tr>

					<tr>
						<td bgcolor="#EFEEEE">¤&nbsp;핸드폰</td>
						<td>
							<p>
								<input type="text" name = "phoneNum" id = "phoneNum" size="20" maxlength="12" style="height: 20px; border: 1px solid #ccc;"><br>
							</p>
						</td>
					</tr>
					<tr>
						<td width="600" colspan="2" align="center">
							<input type="button" id = "m_join" value="회원가입" onclick="signUp()" />
							<input type="reset" value="재입력" />
						</td>
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
