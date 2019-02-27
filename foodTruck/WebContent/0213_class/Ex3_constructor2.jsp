<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
// 생성자 정의
function User(name, age){
	this.name =name;
	this.age = age;
};


// 함수객체의 프로토 타입을 이용하여 객체의 메소드정의(생성자에서 정의하는 것보다 효율적.)
User.prototype.result = function() {
	return this.age>=19? "성인":"미성년자";
};

var u = new User("java",20);
document.write(u.name + "<br>");
document.write(u.result() + "<br>");




</script>
</head>
<body>

</body>
</html>