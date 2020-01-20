<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.pr33.*" %>
    <% request.setCharacterEncoding("UTF-8"); %>
    
    <jsp:useBean id="addr" class="jspbook.ch07.pr33.addrBean"/>
    <jsp:setProperty property="*" name="addr"/>
    <jsp:useBean id="am" class="jspbook.ch07.pr33.addrManager" scope="application"/>
    <%
    	am.add(addr);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : addr_add</title>
</head>
<body>
<center>
<h2>등록내용</h2>
이름 :  <jsp:getProperty property="username" name="addr"/><p>
전화번호 : <%=addr.getTel() %><p>
이메일 : <%= addr.getEmail() %><p>
성별 : <%= addr.getSex() %><p>
그룹 : <%= addr.getGroup() %>
<hr>
<a href="Addr_list.jsp">전체 목록보기</a>
<a href="addr_list_group.jsp">그룹별 목록보기</a>
</center>
</body>
</html>