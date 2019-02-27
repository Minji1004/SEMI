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
	var input = document.getElementById("inputString").value;
	var s = eval(input);
	
	var a = input + " => 결과: "+s;
	
	document.getElementById("result").innerHTML = a;
}


</script>

</head>
<body>

<p>
<input type="text" id="inputString">
<button type="button" onclick="fun()">확인</button>
</p>

<div id = "result"></div>


</body>
</html>