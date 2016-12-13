<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.reservation.model.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%
	String name = (String) session.getAttribute("name");
	ReservationBean bean = (ReservationBean) request.getAttribute("reservationdata");
	int peoplenum = bean.getPeopleNum();
	String type = bean.getType();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDYHARD에 오신걸 환영합니다.</title>
<script src="../js/reservationview.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<%

int action = 0; //up(1) down(0)
int currYear = 0;
int currMonth = 0;
String boxSize = "70";

Calendar c = Calendar.getInstance();
Calendar cal = Calendar.getInstance();

if(request.getParameter("action") == null) {
    
     currMonth = c.get(Calendar.MONTH);
     currYear = c.get(Calendar.YEAR);
     cal.set(currYear,currMonth,1);
    
}
%>

<%!
     public boolean isDate(int y, int m, int d) {
    
          m -= 1;
          Calendar c = Calendar.getInstance();
          c.setLenient(false);
         
          try {
              
               c.set(y, m, d);
               Date dt = c.getTime();
              
          } catch(IllegalArgumentException e) {
               return false;
          }
          return true;
     }
%>

<%!
     public String getTitle(Calendar cal){
         
          SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월");
          return sdf.format(cal.getTime());    
     }

%>

<style>
#calendarTable, #calendarTable th, #calendarTable td {
	border-collapse: collapse;
}

#calendarTable {
	border: 2px solid #000;
	width: 519px;
}

#calendarTable th, #calendarTable td {
	width: <%=boxSize%> px;
	border: 1px solid #000;
	border-collapse: collapse;
	padding: 5px;
}

#calendarTable th {
	background-color: #666;
	color: #fff;
}

#calendarTable td {
	height: <%=boxSize%> px;
	text-align: left;
}

#calendarTable td.empty {
	background-color: #DFDCD8;
}

#calendarTable td.toDayColor {
	background-color: #ffff00;
}
</style>
</head>
<body bgcolor='white'>
	<table border='0' width='521' celpadding='0' cellspacing='0'>
		<tr>
			<td width='260' align='center' valign='middle'><b><%=getTitle(cal)%></b>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td width="100%">
				<table id="calendarTable">
					<tr>
						<th>일</th>
						<th>월</th>
						<th>화</th>
						<th>수</th>
						<th>목</th>
						<th>금</th>
						<th>토</th>
					</tr>
					<%
						//'Calendar loop

						int currDay;
						String todayColor;
						int count = 1;
						int dispDay = 1;

						for (int w = 1; w < 7; w++) {
					%>
					<tr>
						<%
							for (int d = 1; d < 8; d++) {
									if (!(count >= cal.get(Calendar.DAY_OF_WEEK))) //  
									{
						%>
						<td class="empty">&nbsp;</td>
						<%
							count += 1;
									} else {

										if (isDate(currYear, currMonth + 1, dispDay)) // use the isDate method
										{
											//오늘
											if (dispDay == c.get(Calendar.DAY_OF_MONTH)
													&& c.get(Calendar.MONTH) == cal.get(Calendar.MONTH)
													&& c.get(Calendar.YEAR) == cal.get(Calendar.YEAR)) {
												todayColor = "class='toDayColor'";
											} else {
												todayColor = "";
											}
						%>
						<td <%=todayColor%>><%=dispDay%><br></td>
						<%
							count += 1;
											dispDay += 1;
										} else {
						%>
						<td class="empty">&nbsp;</td>
						<%
							}
									}
								}
						%>
					</tr>
					<%
						}
					%>
				</table>


			</td>
		</tr>
	</table>


	<hr>
	<b>예약 신청</b>
	<br>
	<form action="/ReservationRoom.rv" method="post" id="reservationform">
		<table width='521' border="1">
			<input type="text" id="name" name="name" value="<%=name%>" />
			<input type="text" id="peoplenum" name="peoplenum" value="<%=peoplenum%>" />
			<input type="text" id="type" name="type" value="<%=type%>" />
			<tr align="center">
				<td>방</td>
				<td>
					<%
					if (bean.getPeopleNum() >= 2 && bean.getPeopleNum() <= 4) {
				%> <select name="room" id="room" size="1">
						<option value="101">101호</option>
						<option value="102">102호</option>
						<option value="103">103호</option>
				</select> <%} else if (bean.getPeopleNum() >= 5 && bean.getPeopleNum() <= 7) { %>
					<select name="room" id="room" size="1">
						<option value="201">201호</option>
						<option value="202">202호</option>
						<option value="203">203호</option>
				</select> <%} else if (bean.getPeopleNum() > 7) { %> <select name="room"
					id="room" size="1">
						<option value="301">301호</option>
						<option value="302">302호</option>
						<option value="303">303호</option>
				</select> <%} %>
				</td>
			</tr>

			<tr align="center">
				<td>이용시간</td>
				<td>시작 시간<input type="text" name="startusingtime"
					id="startusingtime"> 마지막 시간<input type="text"
					name="endusingtime" id="endusingtime">
				</td>
			</tr>

			<tr align="center">
				<td>상태</td>
				<td><select name="state" id="state" size="1">
						<option value="true">예약</option>
						<option value="waiting">대기</option>
				</select></td>
			</tr>

			<tr align="center">
				<td>가격</td>
				<input type="hidden" id=price name="price"
					value="<%=peoplenum*1000%>" />
				<td><label id="price"><%=peoplenum*1000%></label></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="button" value="신청"
					onclick="sendReservation()"></td>
			</tr>
		</table>
	</form>
	<hr>
	<b>예약 현황</b>
	<hr>
	<b>예약 대기</b>

</body>
</html>
