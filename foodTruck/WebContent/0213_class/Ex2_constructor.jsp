<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
// 생성자(생성자는 일반적으로 대문자로 시작)
function User(name, age){
	// this.name -> 프로퍼티 name 을 만든다.
	this.name =name;
	this.age = age;
	this.result = function(){
		return (this.age>=19)? "성인" : "미성년자"; // 삼항연신자  a? b:c
	}
};

var u = new User("java",20);
document.write(u.name + "<br>");
document.write(u.result() + "<br>");

console.log(u.constructor == User);  // true
console.log(u instanceof User);  // true
console.log(u instanceof Object);  // true




</script>

</head>
<body>

</body>
</html>