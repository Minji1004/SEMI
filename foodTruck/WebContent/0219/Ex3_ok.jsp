<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("utf-8");

int n1 = Integer.parseInt(request.getParameter("num1"));
int n2 = Integer.parseInt(request.getParameter("num2"));
String operator = request.getParameter("operator");

String result = "";
try{
	if(operator.equals("+")){
		result = String.format("%d + %d = %d", n1, n2, n1+n2);
	} else if(operator.equals("-")){
		result = String.format("%d - %d = %d", n1, n2, n1-n2);
	} else if(operator.equals("*")){
		result = String.format("%d * %d = %d", n1, n2, n1*n2);
	} else if(operator.equals("/")){
		result = String.format("%d / %d = %d", n1, n2, n1/n2);
	}
} catch(Exception e){
	result = "연산 오류입니다.";  // ex) 0으로 나누면
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=result %>

</body>
</html>