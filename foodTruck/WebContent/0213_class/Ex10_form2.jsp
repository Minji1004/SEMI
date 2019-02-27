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
	// #1 접근법 - 배열
	var n1 = document.forms[0].name.value;
	// #2  접근법 - 이름
	var n2 = document.myForm.name.value;
	// #3 접근법 - name 속성
	var n3 = document.getElementsByName("name")[0].value;
	// #4 접근법 - id
	var n4 = document.getElementById("name").value;

	alert(n1);
	alert(n2);
	alert(n3);
	alert(n4);
}

</script>

</head>
<body>

<form name = "myForm">
<input type="text" name="name" id="name"><br>
<input type="text" name="age"><br>
<input type="button" value="confirm" onclick="result();" style="width:100px"><br>
</form>
<hr>

<input type="text" name="name"><br> <!-- form.name 과 다른 name -->


</body>
</html>