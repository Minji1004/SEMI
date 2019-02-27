<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
// user 객체 생성
// 객체의 메소드를 호출할 때 this 바인딩.
var user = {
	name:"spring"
	,getName : function() {
		return this.name;
	}
};

var other_user = {
	name:"java"  
};
other_user.getName = user.getName;  // user객체의 메소드를  other_user 에 추가 가능.

console.log(user);
console.log(other_user);

console.log(user.getName());
console.log(other_user.getName());


var n=10;  // 전역변수
function fun() {
	var n=5; // 지역변수
	
	document.write(n+"<br>"); // 5
	document.write(this.n+"<br>"); // 10 -  함수 this는 전역변수에 바인딩.
}

fun();


</script>

</head>
<body>

</body>
</html>