<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var user = {
	name:"java"
	,kor:90
	,eng:80
};

console.log("name" in user);  // true  - 해당객체 존재 여부 확인
console.log("gender" in user);  // false

//document.write(user.name+"<br>");
// 간단하게 찍는법 몰라도댐.
with(user){
	document.write(name+"<br>");
	document.write(kor+eng+"<br>");
}

var arr = ["java", "android", "spring"];
for(var i in arr){  // for(var i=0;i<arr.length; i++) {
	document.write(i+":"+arr[i]+"<br>");
};



</script>

</head>
<body>

</body>
</html>