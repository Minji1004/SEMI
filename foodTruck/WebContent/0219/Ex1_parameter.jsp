<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(){
	var f = document.form1;
	/*
	유효성검사 하려면해라.
	*/
	return true;
}


</script>

</head>
<body>

<form name="form1" action="Ex1_ok.jsp" method="post" onsubmit="return check();">
<p>id : <input type="text" name="id: "> </p>
<p>pwd : <input type="text" name="pwd"> </p>
<p>name : <input type="text" name="name"> </p>
<p>gender : 
	<input type="radio" name="gender" value="man">man
	<input type="radio" name="gender" value="woman">woman
</p>
<p>subjects : 
	<input type="checkbox" name="subject" value="java">java
	<input type="checkbox" name="subject" value="web">web
	<input type="checkbox" name="subject" value="spring">spring
	<input type="checkbox" name="subject" value="oracle">oracle
	<input type="checkbox" name="subject" value="html">html
	<input type="checkbox" name="subject" value="css">css
</p>

<p>
학력:
<select name="hak">
	<option value="대졸">대졸</option>
	<option value="고졸">고졸</option>
	<option value="기타">기타</option>
</select>
</p>

<p>
취미:
<select name="hobby" multiple="multiple" size="5">
	<option>축구</option>
	<option>배구</option>
	<option>농구</option>
	<option>야구</option>
	<option>신구</option>
	<option>구구</option>
	<option>올구</option>
</select>
</p>

<p>
<button>보내기</button>
</p>
</form>
</body>
</html>