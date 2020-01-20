<%@ tag language="java" pageEncoding="UTF-8"%>
<jsp:useBean id="lManager" class="jspbook.pr40.LectureManager" scope="application"/>

<h3 style="font-size:20px">강의 시간표</h3>
<table>
<tr>
<td class=timeEdge>2학년</td>
<td class=dayEdge>월</td>
<td class=dayEdge>화</td>
<td class=dayEdge>수</td>
<td class=dayEdge>목</td>
<td class=dayEdge>금</td>
</tr>
<%
String[] titleNames= {
		"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론",
		"자료구조", "네트워크", "창의와감성", "사회봉사"
		};
int [][] typeM = lManager.getTypeMatrix();
int [][] titleM = lManager.getTitleMatrix();
int [][] spanM = lManager.getSpanMatrix();

for (int i = 0; i < 6; i++) {
	out.println("<tr>");
	out.println("<td class=timeEdge>" + (i + 1) + "</td>");
	for (int j = 0; j < 5; j++) {
		if (spanM[i][j] == 0) // 윗교시 과목의 연장
			continue;
		else if (typeM[i][j] == 0) //연장이 아닌데 lectureType[i][j] == 0이면 공강
			out.println("<td>&nbsp;</td>");
		else { //수업의 시작임
			switch(typeM[i][j]) {
				case 1 : // 전공 필수
					out.print("<td class=major1");
					break;
				case 2 : // 전공 선택
					out.print("<td class=major2");
					break;
				case 3 : // 교양
					out.print("<td class=notmajor");
					break;
				case 4 : // 자유선택
					out.print("<td");	
					break;
			}
			if (spanM[i][j] != 0)
				out.print(" rowspan = " + spanM[i][j]);
		
			out.println(">" + titleNames[titleM[i][j]] + "</td>");			
		}
		if (j == 5)
			out.println("</tr>");
	}
}
%>

</table>