<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<% 
 	request.setCharacterEncoding("utf-8");

	int age = Integer.parseInt(request.getParameter("age"));
	
	String s="";
	if(age>19){
		s= " 완전체";
	} else {
		s = "성장기";
	}

	request.setAttribute("msg", s); // 속성 설정
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>다른 페이지로 리다이렉트 되어 현재페이지는 보이지 않는다.</h3>

	<%
	response.sendRedirect("Ex8_result.jsp");
	%>
</body>
</html>