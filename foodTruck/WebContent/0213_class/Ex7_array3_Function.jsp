<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var arr = ["a","b","c"];
var s;

// 출력 : arr.join();
document.write(arr+"<br>"); // a,b,c
s=arr.join(); // ,로 구분하여 하나의 값으로 만듦. default = ,
document.write(s+"<br>");  // a,b,c
s=arr.join("-"); // -로 구분하여 하나의 값으로 만듦.
document.write(s+"<br>");  // a,b,c


// 배열의 요소 개수
document.write(arr.length+"<br>");


// 배열 마지막 하나의 원소를 추가 : push();
arr.push("d");
document.write(arr.join()+"<br>");  // a,b,c,d
// 배열 첫 하나의 원소를 추가 : unshift();
arr.unshift("0");
document.write(arr.join()+"<br>");  // 0,a,b,c,d


// 배열 마지막 하나의 원소를 제거 : pop();
arr.pop();
document.write(arr.join()+"<br>");  // 0,a,b,c
//배열 첫 하나의 원소를 제거 : shift();
arr.shift();
document.write(arr.join()+"<br>");  // a,b,c


// 배열의 모든 내용 지우기
arr.length=0;
document.write((arr.join())+"싹 제거... "+"<br>"); 	// 싹 제거...


// ***********************
// 정렬 sort(); : 오름차순 정렬
var arr = ["bbc","ccd","aab"];
arr.sort();
document.write(arr.join("-")+"<br>");  // aab-bbc-ccd

// 숫자는  sort로 정렬 안 된다. 숫자를 문자열로 인식해서  sort 함.
var arr2 = [4,5,2,19,1,3];
arr2.sort();
document.write(arr2.join("-")+"<br>");  // 1-19-2-3-4-5
// 정렬기준 함수 설정.
	function compareAsc(a,b){
		return a-b;
	};
	function compareDesc(a,b){
		return b-a;
	};
var arr3 = [4,5,2,1,3];
arr3.sort(compareDesc); // 숫자는 sort() 함수의 매개변수로 정렬의 기준이 되는 함수명을 대입해야함.   
document.write(arr3.join("-")+"<br>");  

</script>


</head>
<body>

</body>
</html>