<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.pr33.*" %>
    
    <jsp:useBean id="am" class="jspbook.ch07.pr33.addrManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : 주소록 목록</title>
</head>
<body>
<div align=center>
<h2>주소록</h2>
<hr>
<a href="addr_form.jsp">주소추가</a><p>
<table border=1 width=500>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>
<%
	for(addrBean ab : am.getAddrList()){
		if(ab.getGroup().equals("가족")){
%>
<tr>
<td><%= ab.getUsername() %></td>
<td><%= ab.getTel() %></td>
<td><%= ab.getEmail() %></td>
<td><%= ab.getSex() %></td>
<td><%= ab.getGroup() %></td>
</tr>
<%
	}
		}
%>
<%
	for(addrBean ab : am.getAddrList()){
		if(ab.getGroup().equals("친구")){
%>
<tr>
<td><%= ab.getUsername() %></td>
<td><%= ab.getTel() %></td>
<td><%= ab.getEmail() %></td>
<td><%= ab.getSex() %></td>
<td><%= ab.getGroup() %></td>
</tr>
<%
	}
		}
%>

<%
	for(addrBean ab : am.getAddrList()){
		if(ab.getGroup().equals("직장")){
%>
<tr>
<td><%= ab.getUsername() %></td>
<td><%= ab.getTel() %></td>
<td><%= ab.getEmail() %></td>
<td><%= ab.getSex() %></td>
<td><%= ab.getGroup() %></td>
</tr>
<%
	}
		}
%>
</table>
</div>
</body>
</html>