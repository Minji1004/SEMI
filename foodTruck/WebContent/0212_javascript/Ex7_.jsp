<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript">
function fun(x,y){
	//console.log(fun.arguments);
	console.dir(fun.arguments);
	
	document.write(x+":"+y+"<br>");  // 입력받은 매개변수가 3개지만 사용하는 것은 2개 2개만 출력함 킼
	
	for(var i=0; i<fun.arguments.length;i++){  
		document.write(fun.arguments[i]+"<br>");
	}
}

fun('a','b','c');




</script>
</head>
<body>

</body>
</html>