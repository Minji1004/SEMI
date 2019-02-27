<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
/*//객체 생성방법 -1
var oo = new Object();
oo.subject = "java";
oo.date = "2000-10-10";
oo.age = 10;

console.log(typeof(oo)); 
console.log(oo);

alert(oo.subject); */


//객체 생성방법 -2
var user={
	subject : "java",
	year : 2000
};
console.log(typeof(user)); 
console.log(user);  // 바로밑 코드 지우면, 밑에 있는 이름이 어케 보이는거지? // 밑코드있으면 안보임

//colsole.log(user.name);  //  is not defined
user.name = "choihyeonwoong";


</script>

</head>
<body>

</body>
</html>