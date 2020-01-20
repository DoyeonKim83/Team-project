<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NETWORK : OWN</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>
		a:link { color: black; text-decoration: none; }
		a:visited { color: black; text-decoration: none; }
		a:hover { color: black; text-decoration: none; }
		* {
			font-family: 'Nanum Gothic', sans-serif;
			font-weight : bold;	
			text-align : center;
		}	
	.button {
		font-weight : bold;
		color : white;
		width : 250px; 
		height : 250px; 
		font-size : 30px;
	}
</style>
<script>
		function mouseover() { document.getElementById("bt").style.opacity = 0.6; }
		function mouseout() { document.getElementById("bt").style.opacity = 1.0; }
		function mouseover1() { document.getElementById("bt1").style.opacity = 0.6; }
		function mouseout1() { document.getElementById("bt1").style.opacity = 1.0; }
		function mouseover2() { document.getElementById("bt2").style.opacity = 0.6; }
		function mouseout2() { document.getElementById("bt2").style.opacity = 1.0; }
	</script>
</head>
<body>
<div style="line-height:0.1;" align="center">
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<h1>NETWORK : OWN</h1>
	<table style="line-height:0.7;" align=center width=800px cellspacing="80px">
	<tr>
		<td><a href="../Practice45/addr_form.jsp">주소록</a><br><hr style="color:black;"></td>
		<td><a href="../Practice46/calendar.jsp">달력</a><br><hr style="color:black;"></td>
		<td><a href="../Practice_47/Practice47.jsp">시간표</a><br><hr style="color:black;"></td>
		<td><a href="./function.jsp">기능소개</a><br><hr style="color:black;"></td>
	</tr>
	</table>
</div>
<div style="line-height:1.8;" align=center>
	<table align=center cellspacing=40px>
	<tr>
		<td width=300 height=400>
			<input class="button" id="bt" type=button value="ADDRESS BOOK" onmouseover="mouseover();" onmouseout="mouseout();" onclick="document.location='../Practice45/addr_form.jsp';" style="background-color : rgb(255, 201, 213);"><br><br>
			전화번호와 이메일의 추가 및<br>관리가 가능한 주소록입니다.<br>
			카테고리별 관리를 통해<br>효율적인 인적 네트워크 관리가 가능합니다.<br><br>
		</td>
		<td width=300 height=400>
			<input class="button" id="bt1" type=button value="CALENDAR" onmouseover="mouseover1();" onmouseout="mouseout1();" onclick="document.location='../Practice46/calendar.jsp';" style="background-color : rgb(201, 238, 255);"><br><br>
			평범하지만 없으면 아쉬운 달력입니다.<br>
			일주일 중 가장 특별한 주말은 다른 색깔로 표시되어 있습니다.<br><br><br>
		</td>
		<td width=300 height=400>
			<input class="button" id="bt2" type=button value="TIME TABLE" onmouseover="mouseover2();" onmouseout="mouseout2();" onclick="document.location='../Practice_47/Practice47.jsp';" style="background-color : rgb(229, 217, 255);"><br><br>
			스스로 쉽게 만들 수 있는 시간표입니다.<br>
			과목 타입별로 색깔이 다른 시간표가<br>완성되어서 가독성이 우수합니다.<br><br><br>
		</td>
	</tr>
	</table><br><br>
</div>
</body>
</html>