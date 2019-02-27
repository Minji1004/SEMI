<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("utf-8");

// 요청된 파라미터를 Map으로 받기;
// key(parameterName), value(parameterValue)
Map<String, String[]> map = request.getParameterMap();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>getPrameterMap()으로 요청 파라미터 받기</h3>
<%
Iterator<String> it = map.keySet().iterator();
while(it.hasNext()){
	String name = it.next();
	String[] values = map.get(name);
	for(String value : values){
		out.print(name+" : "+value+"<br>");
	}
}
%>
</body>
</html>