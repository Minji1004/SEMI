<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<%
request.setCharacterEncoding("utf-8");  

Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH)+1;

// 클라이언트로부터 넘어온 년도와 월이 존재하는 경우 
String sy = request.getParameter("year");
String sm = request.getParameter("month");
if(sy!=null)
	year = Integer.parseInt(sy);
if(sm!=null)
	month = Integer.parseInt(sm);

// Calendar객체에 year년 month월 1일로 설정.
cal.set(year, month-1, 1);
year = cal.get(Calendar.YEAR);
month = cal.get(Calendar.MONTH)+1;

int week = cal.get(Calendar.DAY_OF_WEEK);  // 1(일)~7(토)

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	padding:0px; margin:0px;
}
</style>
<script type="text/javascript">
function changeDate(){
	var f = document.calForm;
	f.action="Ex1_myCalendar2.jsp"
	f.submit();
}


</script>


</head>
<body>

<div style="margin:30px auto; width: 210px;">
	<table style="width:100%; border-spaceing:0;">
		<tr height="35" align="center">
			<td>
				<form name="calForm" method="post">
					<select name="year" onchange="changeDate()">
						<%for(int i=year-5; i<=year+5; i++) { %>
							<option value="<%=i %>" <%=year==i?"selected='selected'":"" %>><%=i %>年</option>		
						<%}%> 
					</select>
					&nbsp;
					<select name="month" onchange="changeDate()">
						<%for(int i=1; i<=12; i++) { %>
							<option value="<%=i %>" <%=month==i?"selected='selected'":"" %>><%=i %>月</option>		
						<%}%> 
					</select>
				</form>
			</td>
		</tr>
	</table>

	<table border="1" style="width=100%; border-spacing:0; border-collapse: collapse;">
		<tr height="30" align="center" bgcolor="#e4e6e4">
			<td width="30" style="color:red;">일</td>
			<td width="30">월</td>
			<td width="30">화</td>
			<td width="30">수</td>
			<td width="30">목</td>
			<td width="30">금</td>
			<td width="30" style="color:blue;">토</td>
		</tr>
	
	
	
<%
	int col = 0;
	out.print("<tr height='30' align='center'>");
	// 달력의 1일 앞 공백부분 
	for(int i=1; i<week; i++){
		col++;
		out.print("<td>&nbsp;</td>");
	}
	
	// 달력의 1~말일 날짜 출력
	String color;
	int e = cal.getActualMaximum(Calendar.DATE); // 해당월의 마지막 일자
	for(int i=1; i<=e; i++){
		color = col==0?"red":(col==6?"blue":"black");  // 토 일 날짜 색지정.
		out.print("<td style='color:"+color+";'>"+i+"</td>");
		col++;
		if(col==7 && i!=e){
			out.print("</tr>");
			out.print("<tr height='30' align='center'>");
			col=0;
		}
	}
	
	// 달력 테이블 형식 마무리 지어주기.
	while(col>0 && col<7){
		out.print("<td>&nbsp;</td>");
		col++;
	}
	out.print("</tr>");
%>


	</table>
</div> 



</body>
</html>