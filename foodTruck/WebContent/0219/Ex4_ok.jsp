<%@page import="java.net.URLDecoder"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.sun.jmx.snmp.Enumerated"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String city = request.getParameter("city");

// get방식으로 인코딩해서 넘긴 파라미터는 반드시 디코딩이 필요(톰켓은 하지 않아도 되지만,, WAS는 반드시 해야함.)
 name = URLDecoder.decode(name, "utf-8");
 city = URLDecoder.decode(city, "utf-8");
// encodeURIComponet()   --->>>   URLDecoder.decode()


/* Map <String, String[]> map = request.getParameterMap(); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>name : <%=name %></p>
<p>city : <%=city%></p>






<%-- <%
Iterator<String> it = map.keySet().iterator();
while(it.hasNext()){
	String name = it.next();
	String[] values = map.get(name);
	for(String value : values){
		out.print(name +" : "+value);
	}
}
%> --%>
</body>
</html>