<%@ page language="java" import="java.sql.*, com.member.model.*" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String id = request.getParameter("id");
	String str = "select * from member where id=?";

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	Connection conn = null;

	DBUtil db = new DBUtil();
	conn = db.getConnection();
	pstmt = conn.prepareStatement(str);
	pstmt.setString(1, id);

	rs = pstmt.executeQuery();

	if (rs.next()) {
		out.println("<center>���̵� �����մϴ�");
		out.println("<br><input type=button value=�ݱ� onclick=window.close();>");
		out.println("<script>opener.document.join.idchkhd.value='';");
		out.println("opener.document.join.id.value='';");
		out.println("</script>");

	} else {
		out.println("<script language='javascript'>");
		out.println("alert('����� �� �ִ� ���̵� �Դϴ�.');");
		out.println("window.close()");
		out.println("</script>");
	}

	rs.close();
	conn.close();
%> 
<html>
<head>
</head>
<body>
</body>

</html> 