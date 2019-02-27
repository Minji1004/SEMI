<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
//setTimeout("alert('반갑다...');",2000);  // 2초후 [한번만] 실행

// 2초마다 1증가하는  n찍기
var n=0;
function start(){
	n++;
	//        document.getElementById("result").innerHTML = n;
	var div = document.getElementById("result"); 
	var s = div.innerHTML; // 해당 객체가 가지고 있는  HTML 소스
	s+="n:"+n+"<br>";
	
	div.innerHTML=s; // HTML 소스를 객체에 대입
}

function stop(){
	n=0;
	clearInterval(tid); // setInterval() 의해 설정한 타이머를 중지
}

// 무한반복
var tid = setInterval("start()", 2000); // 2초에 한번씩 무한반복



</script>


</head>
<body>

<p>
<input type="button" value="시작" onclick="start();">
<input type="button" value="중지" onclick="stop();">
</p>

<div id = "result"></div>


</body>
</html>