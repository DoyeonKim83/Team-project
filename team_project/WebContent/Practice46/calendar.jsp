<%-- 삼김 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar" %>
<%!
	public String parseDay(int day) {
		String d = " ";	
		if (day == 2) { d = "월";}
		else if (day == 3) {d = "화";}
		else if (day == 4) {d = "수";}
		else if (day == 5) {d = "목";}
		else if (day == 6) {d = "금";}
		else if (day == 7) {d = "<font color='blue'>토</font>";}
		else {d = "<font color='red'>일</font>";}		
		return d;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar.jsp</title>
<style>
	table.border, tr.border, td.border {
		border-collapse : collapse;
		border : 1px solid black;
		text-align : center;
	}
</style>
</head>
<body>
<div align=center style="text-align:center; margin:auto;">
<%
	Calendar today = Calendar.getInstance();
	int year = today.get(Calendar.YEAR);
	int month = today.get(Calendar.MONTH);
	int date = today.get(Calendar.DATE);
	
	Calendar cal = Calendar.getInstance();
	String sYear = request.getParameter("YEAR");
	if (sYear != null) {
		year = Integer.parseInt(sYear);
	}
	String sMonth = request.getParameter("MONTH");
	if (sMonth != null) {
		month = Integer.parseInt(sMonth) - 1;
	}
	cal.set(year, month, 1);	
	date = cal.get(Calendar.DATE);
	int d = cal.get(Calendar.DAY_OF_WEEK);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	int i = 0, j = 0, n = 0;
	
	month++;
	out.println("<table width=1250 height=20><tr><td style='text-align:left;'>");
	out.print("<a href=\"calendar.jsp?YEAR=" + (year - 1));
	out.println("&MONTH=" + month + "\">" + "◀ </a>" + year + "년");
	out.print("<a href=\"calendar.jsp?YEAR=" + (year + 1));
	out.println("&MONTH=" + month + "\">" + "▶ </a></td><td style='text-align:center;'>" );
	
	if (month == 1) {
		out.print("<a href=\"calendar.jsp?YEAR=" + year);
		out.println("&MONTH=" + month + "\">" + "</a>" + month + "월");		
	}
	else {
		out.print("<a href=\"calendar.jsp?YEAR=" + year);
		out.println("&MONTH=" + (month - 1) + "\">" + "◀ </a>" + month + "월");
	}
	if (month == 12) {
		out.print("<a href=\"calendar.jsp?YEAR=" + year);
		out.println("&MONTH=" + month + "\">" + "</a>" );
	}
	else {
		out.print("<a href=\"calendar.jsp?YEAR=" + year);
		out.println("&MONTH=" + (month + 1) + "\">" + "▶ </a>" );
	}

	today = Calendar.getInstance();
	year = today.get(Calendar.YEAR);
	month = today.get(Calendar.MONTH);
	date = today.get(Calendar.DATE);
	
	out.println("</td><td style='text-align:right;'>" + year + "-" + (month + 1) + "-" + date);
	out.println("</td></tr></table>");
	
	out.println("<br><table class=border width=1250 height=240>");
	out.println("<tr class=border height=20>");
	while (i <= end) {
		if (i == 0) {
			for (j = 1; j <= 7; j++) {
				out.println("<td class=border style='font-weight:bold;'>" + parseDay(j) + "</td>");
				n++;
			}
			j = 0;
		}
		else {
			while (j < (d - 1)) {
				out.println("<td class=border >&nbsp;</td>");
				j++;
				n++;
			}
			if (n == 0) {
				out.println("<td class=border style='color:red;'>" + i + "</td>");
				n++;
			}
			else if (n == 6) {
				out.println("<td class=border  style='color:blue;'>" + i + "</td>"); 
				n++;
			}
			else {
				out.println("<td class=border >" + i + "</td>"); 
				n++;
			}
		}
		if (n == 7) {
			out.println("</tr>");
			out.println("<tr class=border >");
			n = 0;
		}
		i++;
	 }
	if (n != 7 && n != 0) {
		while (n < 7) {
			out.println("<td class=border >&nbsp;</td>");
			n++;
		}
		out.println("</tr>");
	}
	out.println("</table></div>");
%>
</div>
</body>
</html>