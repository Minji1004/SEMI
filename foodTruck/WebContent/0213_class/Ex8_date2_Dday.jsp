<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
function fun(){
	var input=inputString.value;
	// 20001010   2000-10-10   2000/10/10   2000.10.10    4가지형식 허용.
	// 정규표현식 사용.
	var p =/(\.)|(\-)|(\/)/g;
	input = input.replace(p,"");
	
	if(input.length!=8){
		alert("날짜 형식 오류...");
		inputString.focus();
		return;
	}
	
	var y = parseInt(input.substr(0,4));
	var m = parseInt(input.substr(4,2));
	var d = parseInt(input.substr(6));
	
	var now = new Date();  // 현재 날짜.
	var date = new Date(y,m-1,d);  // 입력받은 값이 날짜로 변환댐.  y=2010,m=12,d=1
	
	// 20101310 -> 20110110 로 자동변환된다. -> 제대로입력안하면 통과 못하게 한다.
	if(y!=date.getFullYear() || m!=date.getMonth()+1 || d!=date.getDate()){
		alert("날짜 형식 오류!!!");
		inputString.focus();
		return;
	}
	
	
	var Dday = (date - now)/1000/60/60/24;
	Dday = Math.ceil(Dday); // 반 올림.
	// Dday = Math.floor(Dday); // 절삭.
	
	var s = "디데이는 <span style='color:red;'>"+Dday+"일</span> 남았습니다.";
	result.innerHTML=s;
	
	
	
}



</script>

</head>
<body>

<p>
날짜 : <input type="text" id="inputString">
<button type="button" onclick="fun();">확인</button>
</p>
<div id="result"></div>



</body>
</html>