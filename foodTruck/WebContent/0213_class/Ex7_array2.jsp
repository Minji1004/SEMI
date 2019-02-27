<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

// #1 2차원배열 생성 = new Array() 비추.
/* var arr = new Array();
arr[0] = new Array();
arr[1] = new Array();
arr[0][0] = 1;
arr[0][1] = 2;
arr[1][0] = 3;
arr[1][1] = 4; */


//#2 2차원배열 생성  - []
/* var arr = [[],[]];
arr[0][0] = 1;
arr[0][1] = 2;
arr[1][0] = 3;
arr[1][1] = 4;
for(var i=0; i<arr.length;i++){
	for(var j=0; j<arr[i].length;j++){
		document.write(arr[i][j]+"<br>");
	}
} */


//#3 2차원배열 생성 - 초기화
var arr = [[1,2,3],[4,5]];
for(var i=0; i<arr.length;i++){
	for(var j=0; j<arr[i].length;j++){
		document.write(arr[i][j]+"<br>");
	}
} 



</script>

</head>
<body>

</body>
</html>