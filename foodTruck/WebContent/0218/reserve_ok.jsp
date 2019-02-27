<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
  request.setCharacterEncoding("utf-8");

	String[] chks = request.getParameterValues("chks");

	String cc = "";
	if(chks != null){
		for(String c : chks){
			cc+=c+",";
		}

		cc = cc.substring(0, cc.length()-1);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>선택좌석 = <%=cc %></p>
</body>
</html>