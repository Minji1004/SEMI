<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%
request.setCharacterEncoding("utf-8");

int rows = 10;
int cols = 15;

int width=cols*30+20*(cols/5)+30;
if(cols/5==0){
	width-=20;
}

String[] cc ={"1:1", "1:2", "1:3", "1:4", "1:5"};
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function sendOk(){
	var f = document.reserveForm;
	var cnt=0;
	
	for(var i=0; i<f.chks.length; i++){
		if(f.chks[i].disabled){
			continue;
		}
		if(f.chks[i].checked){
			cnt++;
		}
	}
	
	if(cnt<1 || cnt>4){
		alert("좌석은 1~4개만 선택가능.");
		return;
	}
	
	f.submit();
}
</script>


</head>
<body>

<div style="margin:30px auto; width: <%=width %>px;">
	<form name="reserveForm" action="reserve_ok.jsp" method="post">
		<table style="width:100%">
			<tr height="30" bgcolor="#e4e6e4" align="center">
				<td>CGV 스크린</td>
			</tr>
		</table>
		
		
		<table style="width:100%; border-spacing:0;">
			<tr height="30" align="center">
				<%
				out.print("<td width='30'>&nbsp;</td>");
				for(int i=1; i<=cols; i++){
					if(i!=1 && i%5==1){
						out.print("<td width='30'>&nbsp;</td>");
					}
					out.print("<td width='30'>"+i+"</td>");	
				}
				%>
			</tr>
			
			<%
			String s;
			for(int i=1; i<=rows; i++){
				out.print("<tr height='25' align='center'>");
				out.print("<td>"+i+"</td>");	
				for(int j=1; j<=cols; j++){
					if(j!=1 && j%5==1){
						out.print("<td bgcolor='#e4e6e4'>&nbsp;</td>");
					}
					s=i+":"+j;
					boolean b= false;
					for(int k=0; k<cc.length; k++){
						if(s.equals(cc[k])){
							b=true;
							break;
						}
					}
				
					out.print("<td>");
					if(b){
						out.print("<input type='checkbox' name='chks' value='"+s+"'checked='checked'disabled='disabled'>");	
					} else {
						out.print("<input type='checkbox' name='chks' value='"+s+"'>");	
					}
					out.print("</td>");
				}
				out.print("</tr>");
			}
			%>
		</table>
		
		
		<table style="width:100%; border-spacing: 0;">
			<tr height="30" align="right">
				<td>
					<button type="button" onclick="sendOk()">좌석예약</button>
				</td>
			</tr>
		</table>
		
		
		
		
		
		
		
		
		
		
	</form>
</div>


</body>
</html>