<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function fun(){
	// location.replace("T_member.html");
	location.href="T_member.html";
}

function fun2(){
	var s = navigator.userAgent;
	
	document.getElementById("layout").innerHTML=s;
	
	
}
</script>
</head>
<body>

<button type="button" onclick="fun()">join</button>
<button type="button" onclick="javascript:location.href='T_member.html';">join</button>
<button type="button" onclick="fun2()">browser</button>
<br>
<div id="layout"></div>
</body>
</html>