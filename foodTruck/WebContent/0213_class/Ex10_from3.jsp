<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript">
	function result1(){
		var n=document.form1.inputString.value;
		alert(n);
	}
	
	function result2(){
		//var n=document.form2.inputString.value;
		//var n = document.forms[1].inputString.value;
		var n=document.forms['form2'].inputString.value; //"" ''구분없지만 밖을 ""가 감싸니까 ''씀
		alert(n);
	}
	
	// form1 form2 모두 접근가능하게.
	function result3(f){
		var n=document.forms[f].inputString.value;
		alert(n);
	}
	
	</script>
</head>
<body>
	<form name ="form1">
		<input type="text" name="inputString">
		<button type="button" onclick="result1()">confirm</button>
		<button type="button" onclick="result3('form1')">confirm-1</button>
		<!-- <button type="button" onclick="result3(form1.name)">confirm-1</button> 비추-->
	</form>
	<br><hr>
	
	<form name ="form2">
		<input type="text" name="inputString">
		<button type="button" onclick="result2()">confirm</button>
	</form>
	<br><hr>
	
	<button type="button" onclick="result3('form1')">confirm-1</button>
	<button type="button" onclick="result3('form2')">confirm-2</button>
	
	
</body>
</html>