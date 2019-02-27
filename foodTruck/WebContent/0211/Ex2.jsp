<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>



<%!// 선언부(필드, 메소드 정의)
	int num;

	int sum(int n) {
		int s = 0;
		for (int i = 1; i <= n; i++) {
			s += i;
		}
		return s;
	}%>



<%
	// 메소드 -> javaService() 영역에 추가되는 코드
	int a = 0;

	num++;
	a++; // 메소드 안 변수 초기화 안하면 오류.
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>스크립릿 : 선언부</h3>

	<p>
		num(선언부) :
		<%=num%></p>
	<p>
		a(스크립릿변수) :
		<%=a%></p>
	<p>
		1~10 까지의합 :
		<%=sum(10)%></p>

</body>
</html>