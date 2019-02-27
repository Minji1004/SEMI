<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function result(){
	var s="", v, f;
	
	f = document.forms[0];
	v =f.elements[0].value;
	s = v+"<br>";
	v =f.elements[1].value;
	s += v+"<br>";
	
	f = document.forms[1];
	v =f.elements[0].value;
	s += v+"<br>";
	v =f.elements[1].value;
	s += v+"<br>";
	
	alert(s);
}



</script>

</head>
<body>

<div>
	<form>
		<input type="text">
		<input type="text">
	</form>
</div>
<hr>

<div>
	<form>
		<input type="text">
		<input type="text">
	</form>
</div>
<hr>

<div>
	<button onclick ="result()" type="button">확인</button>
</div>
<hr>

</body>
</html>