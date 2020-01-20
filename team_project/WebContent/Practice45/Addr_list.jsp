<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.pr33.*"%>
    
    <jsp:useBean id="am" class="jspbook.ch07.pr33.addrManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : 주소록 목록</title>
</head>
<body>
<form method="get" action="Addr_list.jsp">
<div align=center>
<h2>주소록(전체보기)</h2>
<hr>
<%
	int rpp = 3;
	int currentPage;
	String sindex = request.getParameter("sindex");
	
	if(sindex == null){
		currentPage = 1;
	}
	else{
		currentPage = Integer.parseInt(sindex);
	}
	
	int allpage;
	int size = am.getAddrList().size();
	
	if(size % rpp == 0){
		allpage = size / rpp;
	}
	else{
		allpage = size / rpp + 1;
	}
%>
<a href="addr_form.jsp">주소추가</a><p>
<table border=1 width=600 style="text-align:center;" >
<%
		out.print("<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td><td>그룹</td></tr>");
		int startIndex = (currentPage-1) * rpp;
		int lastIndex = startIndex + rpp;
		if(size - startIndex < rpp){
			if(size % rpp == 0){
				lastIndex = startIndex + rpp;
			}
			else{
				lastIndex = startIndex + (size % rpp);
			}
		}
		for(int j = startIndex; j < lastIndex; j++){
			addrBean ab = am.getAddrList().get(j);
			out.print("<tr><td>"+ab.getUsername()+"</td><td>"+ab.getTel()+"</td><td>"+ab.getEmail()+"</td><td>"+ab.getSex()+"</td><td>"+ab.getGroup()+"</td></tr>");
		}

		out.print("</table><br>");
		
		for(int i = 0; i < allpage; i++){
			if((i+1) != currentPage){%>
			<a href="Addr_list.jsp?sindex=<%=(i+1)%>"><%=(i+1)%></a>
			<%}
			else{
				out.print(i+1);
			}
			
			if(i != allpage-1){
				out.print("| ");
			}
		}

%>
</div>
</form>
</body>
</html>