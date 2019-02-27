<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function element11(){
	var s = "<b>자바</b>";
	// document.getElementById("result").innerText = s;  // <b>자바</b>  -태그를 텍스트로 인식하게 설정 
	
	 document.getElementById("result").innerHTML = s;  // 자바    -태그를 텍스트로 인식하게 설정 
	// id로만  객체 접근 가능, 단 아이디와 동일한 이름의 변수명이 없는 경우.(비추 인간은 자기가 설정한 변수 모두 기억 불가.)
	// result.innerHTML = s; // HTML로 인식.
}

function result11(){
	var popMsg;
	popMsg=document.getElementById("result").innerHTML; // 객체가 가지고 있는 텍스트만 반환
	//s=result.innerText; // 객체가 가지고 있는 HTML 보여줘
	alert(s);
}
</script>
</head>
<body>

<button type="button" onclick="element11();">추가</button>
<button type="button" onclick="result11();">확인</button>
<div id = "result"><b>스프링</b></div>

</body>
</html>