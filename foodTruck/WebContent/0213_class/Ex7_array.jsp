<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
// #1 배열 생성 - new Array();
var arr = new Array();  // 생성자를 이용한 빈 배열 생성, 성능 구림.
// var arr = new Array(2);  // 크기지정. 크기의미없어.
arr[0] ="a";
arr[1] ="b";
arr[3] ="c"; // 1->3 건너띔
for(var i=0; i<arr.length;i++){
	document.write(arr[i]+"<br>"); // a b undefined c
}
document.write("<br>");


//#2 배열 생성 - [];
var arr2 = []; //  빈 배열, new Array(); 보다 성능 좋음.
arr2[0]=1;
arr2[1]=2;
arr2[3]=3;
for(var i=0; i<arr2.length;i++){
	document.write(arr2[i]+"<br>"); // 1 2 undefined 3
}
document.write("<br>");


//#3 배열 생성 - 초기화
var arr3 = [10,20,30];
arr3[4] = 50;
for(var i=0; i<arr3.length;i++){
	document.write(arr3[i]+"<br>"); // 10 20 30 undefined 50
}
document.write("<br>");


// undefined 안나오게 하고 싶어.
// if(arr3[4]==undefined){}   -- if 써도 되고,
var arr3 = [10,20,30];
arr3[4] = 50;
for(var i in arr3){
	document.write(arr3[i]+"<br>"); // 10 20 30 undefined 50
}
document.write("<br>");



</script>

</head>
<body>

</body>
</html>