<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	inputString.focus();
	
	inputString.onkeydown = function(e){
		var code = e.keyCode; // keyCode value.
		// var code = e.which; // keyCode value.
		span_kd.innerHTML = code;
	}
	
	inputString.onkeypress = function(e){
		var code = e.keyCode; 
		span_kp.innerHTML = code;
	}
	
	inputString.onkeyup = function(e){
		var code = e.keyCode; 
		span_ku.innerHTML = code;
	}
}


</script>
</head>
<body>
<h3>키보드 이벤트</h3>
<p>
	<input type="text" id="inputString">
</p>

<p><label>keydown : </label><span id ="span_kd"></span> </p>
<p><label>keypress : </label><span id ="span_kp"></span> </p>
<p><label>keyup : </label><span id ="span_ku"></span> </p>


</body>
</html>