<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%
 	request.setCharacterEncoding("utf-8");

	// 클라이언트의 파라미터 넘겨 받기
	String name = request.getParameter("name");
	
	// 속성
	String s = (String)request.getAttribute("msg");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>라다이렉트된 페이지 : request, response 객체가 초기화 되어 모두 null 출력</h3>
	<p>주소도 리다이렉트 된 주소가 보인다</p>
	
	<p>name : <%=name %></p>
	<p>result : <%=s%></p>
	
</body>
</html>