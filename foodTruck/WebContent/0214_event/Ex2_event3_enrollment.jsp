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
	alert("event enrollment~");
	
	// addEventLinstener( , , )
	header2.addEventListener("click", function(){
		alert("click~");
	}, false);
	
	
}

</script>
</head>
<body>

<h1 id="header1" onclick="fun1();">enrollment</h1>
<h1 id ="header2">click2</h1>

</body>
</html>