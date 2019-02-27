<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<% 
 	request.setCharacterEncoding("utf-8");

	int age = Integer.parseInt(request.getParameter("age"));
	
	String s="";
	if(age>19){
		s= " 응 군대가";
	} else {
		s = "응 급식먹어.";
	}

	request.setAttribute("msg", s); // 포워딩 할 페이지에 전달할 속성
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>다른 페이지로 포워딩 되어서 현재페이지는 보이지 않는다.</h3>

	<jsp:forward page="/WEB-INF/view/Ex7_result.jsp"/>

</body>
</html>