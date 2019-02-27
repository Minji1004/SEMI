<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var a;

a="10"+"20";
document.write(a+"<br>");  // 1020 , 문자열 + 문자열 = 문자열

a="10"+20;
document.write(a+"<br>");  // 1020 , 문자열 + 숫자 = 문자열

a=10+20;
document.write(a+"<br>");  // 30 , 숫자 + 숫자= 숫자

a="10"*"20";
document.write(a+"<br>");  // 200 , 숫자문자열 * 숫자문자열 = 숫자 (+ 빼고 자동 형변환 댐.)

a="10a10"*"20";
document.write(a+"<br>");  // NaN : 연산불가.

a="10a10";
document.write(typeof(a)+"<br>");  // string

a=Number("10a10"); // 숫자로 변환
document.write(a+"<br>");  // NaN   , Number("1,000") => NaN
document.write(typeof(a)+"<br>");  // number

a=parseInt("10a10");  // 정수로 변환
document.write(a+"<br>");  // 10

a=parseInt("1,000");  // 정수로 변환
document.write(a+"<br>");  // 1

a=10;
a=String(a);
document.write(typeof(a)+"<br>");  // string


</script>
</head>
<body>

</body>
</html>