<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>element 및 text ActionTag</h3>
	<h4>element ActionTag : html소스 만들때</h4>
	
	<jsp:element name="userName">
		<jsp:attribute name="gender">
			man
		</jsp:attribute>
		
		<jsp:body>
			 홍길동
 		</jsp:body>
	</jsp:element>
	
	<p>
	<jsp:text>text Action Tag</jsp:text>
	</p>
	
	
	
</body>
</html>