<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("utf-8");

// 클라이언트에서 서버로 전송(요청)된 파라미터 이름받기
// 내가 이름을 알 필요가없어
Enumeration<String> e = request.getParameterNames();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>all parameterNames requested</h3>
<%
	while(e.hasMoreElements()){
		String name = e.nextElement(); // 파라미터 이름
		// String value = request.getParameter(name);  // 동일한 이름이 2개이상이면 하나만 받는다.(취미 다선택해도 하나만.)
		// out.print(name+":"+value+"<br>");
		
		// getParameterValues 로 받아야한다.
		String[] values = request.getParameterValues(name);
		for(String value : values){
			 out.print(name+": "+value+"<br>");
		}
		
	}

%>

</body>
</html>