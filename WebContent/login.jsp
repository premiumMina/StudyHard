<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	String name = (String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<script type="text/javascript">
	function loginform_clearbg(type) {
		if (type == "id") {
			document.loginform.id.style.backgroundImage = '';

		} else if (type == "password") {
			document.loginform.password.style.backgroundImage = '';
		}
	}
</script>
</head>
<body>
	<%
		if (id == null || id.equals(null)) {
	%>
	<table width="182" cellpadding="0" cellspacing="0" background="image/login_back.jpg" height="159">
		<form action="LoginAction.do" method="post" name="loginform">
			<tr>
				<td width="182" height="40" colspan="4">&nbsp;</td>
			</tr>

			<tr>
				<td width="182" height="21" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="text" name="id" id="id" size="18" maxlength="30"
					style="background-image: url(http://wstatic.naver.com/w7/green/loginbox_id.gif); background-repeat: no-repeat; background-position: 5px 3px; height: 18px; border: 1px solid #ccc;"
					onFocus="this.style.backgroundImage='';"onblur="loginform_clearbg();" tabindex="1" />
				</td>
			</tr>

			<tr>
				<td width="182" height="17" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="password" type="password" size="18" maxlength="12"
					style="background-image: url(http://wstatic.naver.com/w7/green/loginbox_pw.gif); background-repeat: no-repeat; background-position: 5px 3px; height: 18px; border: 1px solid #ccc;"
					onFocus="this.style.backgroundImage='';" onblur="loginform_clearbg();" tabindex="2" />
				</td>
			</tr>

			<tr>
				<td width="95" height="69" rowspan="2"><img
					src="image/login_back_w.gif" width="95" height="69" border="0"
					usemap="#ImageMap2"></td>
				<td width="6" height="46"></td>
				<td width="61" height="46"><input type="image"
					src="image/login_back_w.gif" width="59" height="32" border="0"
					usemap="#ImageMap1"></td>

				<td width="20" height="69" rowspan="2"></td>
			</tr>

			<tr>
				<td width="67" height="23" colspan="2"></td>
			</tr>
		</form>
	</table>
	<map name="ImageMap1">
		<area shape="rect" coords="8, 10, 65, 50">
	</map>
	<map name="ImageMap2">
		<area shape="rect" coords="25, 6, 88, 25" href="join.jsp"
			target="_parent">
		<area shape="rect" coords="24, 31, 88, 50" href="idfind.do"
			target="_parent">
	</map>

	<%
		} else {
	%>
	<form action="LoginAction.do" method="post" name="loginform">
		<table width="182" cellpadding="0" cellspacing="0" background="image/login_ok.jpg" height="159">
			
			<tr>
				<td width="183" height="38">&nbsp;</td>
			</tr>
			
			<tr>
				<td width="183" height="12"><font size="2">&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
			</tr>
			
			<tr>
				<td width="183" height="10" align ="center">
						<font size="2"> </font>
						<span style="font-size: 9pt;">
						<%=name%> 님 반갑습니다.
						</span>
				</td>
			</tr>
			
			<tr>
				<td width="183" height="27" align=center>
					<%
						if (id.equals("admin")) {
					%> <a href="admin.ao" target="_parent">[관리자모드]</a><br> 
					<%}%> 
						<!-- <a href="reserveMypage.ro" target="_parent">[예매내역]</a> -->
				</td>
			</tr>
			
			<tr>
				<td width="183" height="27"><font size="2"><img src="image/login_back_w.gif" width="178" height="28" border="0" usemap="#ImageMap1"></font></td>
			</tr>
			
			<tr>
				<td width="183" height="16"><font size="2"></font></td>
			</tr>
			
		</table>
		<br>
	</form>
	<map name="ImageMap1">
		<area shape="rect" coords="23, 9, 87, 30" href="UpdateAction1.do" target="_parent">
		<area shape="rect" coords="100, 9, 160, 30" href="Logout.do">
	</map>
	<%
		}
	%>
</body>
</html>