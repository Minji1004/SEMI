<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
// 함수 선언문 방식으로 함수 생성
// 함수 선언문 방식은 선언전 호출 가능.
document.write(sum(100)+"<br>");
function sum(n){
	var s=0;
	for(var i=1;i<=n;i++){
		s+=i;
	}
	return s;
}
var ss;
ss=sum(100);
document.write(ss+"<br>");



// -------------------------------------
// 함수 표현식 방법으로 함수 생성
// 함수 표현식 방법은 선언전 호출 불가능.
// document.write(fun(10,5)+"<br>");  -- 변수에 담아놓고 부르니까. 변수개념. 변수가 없어서 못 불러
var fun = function(x,y){
	return x+y;
}
var f = fun;
document.write(fun(10,5)+"<br>");
document.write(f(10,5)+"<br>");




//-------------------------------------
// 기명(이름이 있따~) 함수 표현식 방법으로 함수 생성
var fun2 = function add(x,y){
	return x+y;
}
document.write(fun2(10,15)+"<br>");

// document.write(add(10,15)+"<br>");  // 에러: 함수표현식의 함수명은 외부에서 호출불가.
// 재귀호출 할때 사용한다.
var fact = function factorial(n){
	if(n<=1){
		return 1;
	}
	return n*factorial(n-1);	
}
document.write(fact(3)+"<br>");








//-------------------------------------
// Function() 생성자를 이용하여 함수 만들기
var f1 = Function('a','b','return a+b');
document.write(f1(1,2)+"<br>");














</script>
</head>
<body>




</body>
</html>