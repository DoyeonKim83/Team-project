<%-- 삼김 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : 주소록</title>
</head>
<body>
<center>
<H2>주소록 등록</H2>
<hr>
<form name = form1 method="post" action=addr_add.jsp>
<table border=1 cellspacing=1 cellpadding=5>
<tr>
<td>이름</td>
<td><input type=text size=20 name=username></td>
</tr>
<tr>
<td>전화번호</td>
<td><input type=text size=20 name=tel></td>
</tr>
<tr>
<td>이메일</td>
<td><input type=text size=20 name=email></td>
</tr>
<tr>
<td>성별</td>
<td>
<select name=sex>
<option selected>남</option>
<option>여</option>
</select>
</td>
</tr>
<tr>
<td>그룹</td>
<td>
<select name=group>
<option selected>친구</option>
<option >직장</option>
<option >가족</option>
</select>
</td>
</tr>
<tr><td colspan=2 align=center>
<input type=submit value="확인">
<input type=reset value="취소"></td></tr>
</table>
</form>
</center>
</body>
</html>