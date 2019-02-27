<%@page import="java.text.SimpleDateFormat"%>
<%@page import="sun.java2d.pipe.SpanShapeRenderer.Simple"%>
<%@page import="javafx.scene.input.DataFormat"%>
<%@page import="com.sun.javafx.binding.StringFormatter"%>
<%@page import="sun.security.jca.GetInstance"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
request.setCharacterEncoding("utf-8");
NumberFormat nf = NumberFormat.getCurrencyInstance();

String name = request.getParameter("name");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");
int basicpay = Integer.parseInt(request.getParameter("basicpay"));
int sudang = Integer.parseInt(request.getParameter("sudang"));

double tax=0;
int goTax= (basicpay+sudang);
if(goTax>=3000000){
	tax = Math.round(goTax*0.3);
} else if(goTax>2000000) {
	tax = Math.round(goTax*0.2);
} else {
	tax = 0;
}
double pay = basicpay+sudang-tax;

String sbirth= birth.replaceAll("(\\.|\\-|\\/)", "");
int y=Integer.parseInt(sbirth.substring(0,4));
int m=Integer.parseInt(sbirth.substring(4,6));
int d=Integer.parseInt(sbirth.substring(6));
//띠1(닭) ~ 12(원숭이)
String[] tt ={"신","유","술","해","자","축","인","묘","진","사","오","미"};


Calendar cal = Calendar.getInstance();
int age = cal.get(Calendar.YEAR)-y;
if(m>cal.get(Calendar.MONTH)+1 || (m==cal.get(Calendar.MONTH)+1)&& d>cal.get(Calendar.DATE)){
	age--;
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		이름:
		<%=name %></p>
	<p>
		생년월일:
		<%=birth %></p>
	<p>
		띠:
		<%=tt[y%12]%></p>
	<p>
		나이:
		<%=age %></p>
	<p>
		전화번호:
		<%=tel %></p>
	<p>
		기본급:
		<%=nf.format(basicpay) %></p>
	<p>
		수당:
		<%=nf.format(sudang) %></p>
	<p>
		세금:
		<%=nf.format(tax) %></p>
	<p>
		실급여:
		<%=nf.format(pay) %></p>



</body>
</html>