<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.wb{background:white;}
	
	.yb{background:yellow;}
</style>

<script type="text/javascript">
	function mover(){
		document.getElementById("layout").className="yb";
	}
	
	function mout(){
		layout.className="wb";
	}


</script>

</head>
<body>

<div id="layout" style="border:1px solid black; width: 200px; 
	height:200px;" onmouseover="mover()" onmouseout="mout()" ></div>


</body>
</html>