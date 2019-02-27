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
	alert("hello...");
}

function fun2(){
	// stopPropagation()
	event.stopPropagation(); // event 전파 막음.
	alert("hello java...");
}

</script>
</head>
<body>
<div onclick="fun1();">
	<div>hello</div>
	<div onclick="fun2();">java</div>
</div>
</body>
</html>