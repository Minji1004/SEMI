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
	var input = inputString.value;
	var p;

	// p= /^[가-힣]{2,4}$/;  	// Korean length : 2~4
	// p = /^[가-힣]+\s*[가-힣]{0,}$/;      // 한자 이상의 한글과 띄어쓰기 
	// p= /^\d+$/;  	// Number length : 1~    	/^\d{1,}$/     /^[0-9]+$/
	// p= /^01[016789]-[0-9]{3,4}-[0-9]{4}$/; //전화번호(000-0000-0000, 000-000-0000)
	
	// 전체길이 : 5~10자 이내,, [영문자 하나이상]&[하나이상의 숫자 또는 특수문자]
	p = /^(?=.*[a-z])(?=.*[!@#$%]|.*[0-9]).{5,10}$/i; 
	// ?= : ?= 뒤에는 반드시 해당하는 형식이 와야된다. 앞에는 와도되고안와도됨
	// .* : 모든문자.. 앞에 숫자던지 특수문자던지 0개이상 있을 수 있따.
	if(! p.test(input)){  // test() : 정규표현식이 맞나 안맞나 테스트.
	 	alert("error~");
		return;
	}
	alert("confirm~")
}


</script>
</head>
<body>

<p><input type="text" id="inputString"></p>
<P><button type="button" onclick="fun()">confirm</button></P>
</body>
</html>