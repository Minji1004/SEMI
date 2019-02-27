<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* 
 * /var s = "";
 for(var i in screen){
		s+=screen[i]+"/n";
	}
	alert(s);

	console.log(screen); */

	var f = window.open("","","width=300, height=200");
	f.moveTo(0,0);
	
	setInterval(function(){
		f.moveBy(10,10);
	},1000);
</script>
</head>
<body>




</body>
</html>