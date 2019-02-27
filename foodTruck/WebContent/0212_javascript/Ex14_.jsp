<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var a, b;

a="123a";
b=isFinite(a); // 숫자이면 참
// b=isFinite('1,123'); // false
// b=isFinite('123'); // true
console.log(a+" : "+b);  // false



a="123a";
b=isNaN(a); // 숫자가 아니면 참
// b=isFinite('1,123'); // true
// b=isFinite('123'); // false
console.log(a+" : "+b);  // true


// 암기
a="123abc";
b=parseInt(a);  // 123
console.log(a+" : "+b)

a="뮻123";
b=parseInt(a);  // NaN
console.log(a+" : "+b)


</script>


</head>
<body>





</body>
</html>