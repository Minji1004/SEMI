<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>include 지시어</h3>

<p>include 지시어: ctrl+c , ctrl+v   소스를 가져온다.</p>

<%@ include file="Ex6_inc.jsp" %>

<p>n:<%=n %></p>


</body>
</html>