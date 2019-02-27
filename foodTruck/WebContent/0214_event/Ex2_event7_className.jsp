<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function txtFocus(obj){
	obj.className="yb";  // className으로 ybf를 준다는 말이다.
}
function txtBlur(obj){
	obj.className="wb";
}

</script>
<style type="text/css">
.wb{
	background: white;
	border: 1px solid blue;
	outline: none;  /* chorme outline shadow none */
}
.yb{
	background: yellow;
	border: 1px solid #ff0000;
	outline: none;  /* chorme outline shadow none */
}

</style>
</head>
<body>

<form>
	<p>이름: <input type="text" name="name" class="wb" onfocus="txtFocus(this)" onblur="txtBlur(this)"></p>
	<p>나이: <input type="text" name="age" class="wb" onfocus="txtFocus(this)" onblur="txtBlur(this)"></p>
	<p><button type ="button">confirm</button></p>
</form>
</body>
</html>