<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("utf-8");

String[] friends =  request.getParameterValues("itemRight");
String name="";
if(friends!=null){
	for(String s : friends){
		name+=s+",";
	}
	name = name.substring(0,name.length()-1);
}


String msg =  request.getParameter("msg");
msg = msg.replaceAll("&","&amp;");
msg = msg.replaceAll("\"","&quot");
msg = msg.replaceAll("<","&lt;");
msg = msg.replaceAll(">","&gt;");
msg = msg.replaceAll(" ","&nbsp;");  // \\s를 사용하면 \n도 공백으로 바궈버림.
msg = msg.replaceAll("\n","<br>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>받는사람 : <%=name %></p>
<div>메세지...</div>
<div><%=msg %></div>

</body>
</html>