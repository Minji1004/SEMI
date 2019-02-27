<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page buffer="1kb" autoFlush="true"%> 	<%--  buffer TESt --%>

<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>page 지시어 : buffer 예제</h3>
	
	<!-- 숫자 4개를 1000번 -> 4000 Byte -->
	<%
		for (int i = 1; i <= 1000; i++) {
	%>
	1234 	 <!-- 1234출력 -->
	<%
		}
	%>


</body>
</html> 