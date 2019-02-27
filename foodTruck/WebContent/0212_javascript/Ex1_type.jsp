<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var a; // 변수선언, 전역변수

a=typeof('자바');  
document.write(a+"<br>"); // string

a=typeof(123);  
document.write(a+"<br>"); // number

a=typeof(true);  
document.write(a+"<br>"); // boolean

a=typeof(function(){});  
document.write(a+"<br>"); // function

a=typeof({});  
document.write(a+"<br>"); // object

a=typeof(null);  
document.write(a+"<br>"); // object

a=typeof(GG);  
document.write(a+"<br>"); // undefined = 존재하지않음. 저런 자료형은 없다는 말임. null :정의되지않은 상태.


var b;
document.write(b+"<br>"); // undefined  ,초기화 하지않아서.
document.write(typeof(b)+"<br>"); // undefined  

b=null;
document.write(b+"<br>"); // null  
document.write(typeof(b)+"<br>"); // object  


</script>

</head>
<body>

</body>
</html>