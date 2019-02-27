<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function fun1(){
	alert("hello");
	
	// event enrollment
	document.getElementById("header2").onclick = function() { 
		alert("hello2"); 
		// event remove
		// document.getElementById("header2").onclick = null;
		// this.onclick = null;
		this.style.color = "tomato";
	};
}

</script>
</head>
<body>

<h1 id="header1" onclick="fun1();">click1</h1>
<h1 id ="header2">click2</h1>

</body>
</html>