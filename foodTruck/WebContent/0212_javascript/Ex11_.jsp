<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function bg(){
	var r = Math.floor(Math.random()*256); //0~255  사이의 난수.
	var g = Math.floor(Math.random()*256); //0~255  사이의 난수.
	var b = Math.floor(Math.random()*256); //0~255  사이의 난수.
	document.getElementById("layout").style.backgroundColor="rgb("+r+","+g+","+b+")";
	
	setTimeout(() => {return bg();}, 2000);
	//setTimeout("bg()", 2000); 
	
}

window.onload=function(){
	bg();
}


</script>

</head>
<body>

<div id="layout" style="width:500px; height:500px; border: 1px solid black;"></div>

<!-- <script>
bg();
</script> -->

</body>
</html>