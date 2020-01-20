<%-- 삼김 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" import="jspbook.pr40.LectureBean" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<jsp:useBean id="lecture" class="jspbook.pr40.LectureBean" />
<jsp:useBean id="lManager" class="jspbook.pr40.LectureManager" scope="application"/>
<jsp:setProperty name="lecture" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 작성</title>
<style>
body {
	font-family:굴림, serif;
}
table {
    border-collapse:collapse;
}
table, td, th {
    border:solid 1px black;
}
td {
    width:85px;
    text-align:center;
    font-size:13px;
    font-family:굴림, sans-serif, serif;
}
tr {
   height:55px; 
}
.timeEdge {
    font-weight:bold;
    font-size:20px;
    font-family:serif;
}
.dayEdge {
    font-size:20px;
    font-family:sans-serif;
}
.major1 {
    background-color:#FFE78A;
}
.major2 {
    background-color:#AACEEA;
}
.notmajor {
    background-color:#C5C5C5;
}
</style>
</head>
<body>
<div align="center">
<form method="POST" action="Practice47.jsp">
과목타입 :
<select name="type">
<%
for (int i = 0; i < 4; i++)
	out.println("<option value=" + i + ">" + lecture.getTypeNames(i) + "</option>");
%>
</select>

과목명 : 
<select name="title">
<%
for (int i = 0; i < 8; i++)
	out.println("<option value=" + i + ">" + lecture.getTitleNames(i) + "</option>");
%>
</select>

요일 : 
<select name="day">
<%
for (int i = 0; i < 5; i++)
	out.println("<option value=" + i + ">" + lecture.getDayNames(i) + "</option>");
%>
</select>

시간 : 
<select name="time">
<%
for (int i = 0; i < 6; i++)
	out.println("<option value=" + i + ">" + (i + 1) + "</option>");
%>
</select>

연강여부 : 
<select name="consecutive">
<%
for (int i = 0; i < 6; i++)
	out.println("<option value=" + (i + 1) + ">" + (i + 1) + "</option>");
%>
</select>
&nbsp;&nbsp;&nbsp;<input type="submit" value="등록" />
</form>
<hr/>
<%
if (lecture.getType() != -1) {
	lManager.add(lecture);
	lManager.buildMatrix();
	%>
	<mytag:timeTable />
	<p><hr/></p>
	<%
	ArrayList<LectureBean> list = lManager.getLectureList();
	for (int i = 0; i < list.size(); i++) {
		LectureBean l = list.get(i);
		out.println(l.toString());
	}
}
%>
</div>
</body>
</html>