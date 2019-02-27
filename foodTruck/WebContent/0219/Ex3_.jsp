<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function sendOk(operator){
	var f = document.forms[0];
	
	if(!/^(\d+)$/g.test(f.num1.value)){
		f.num1.focus();
		return;
	}
	if(!/^(\d+)$/g.test(f.num2.value)){
		f.num2.focus();
		return;
	}
	// 서버는 클라이언트가 어떤 연산자를 누른지 알아야한다  => input 속성 활용.
	// 버튼으로 연산자를 전송 받는다.
	// 그 연산자를 input속성의 값으로 넣어준다.
	// 클라이언트가 해당 input 태그를 볼 필요없다. -> input display속성 OR input hidden속성  (cf. db 기본키에 사용)
	f.operator.value = operator;
	
	f.submit();
}
</script>
</head>
<body>

<form action="Ex3_ok.jsp" method="post">
	<p><input type="text" name="num1" placeholder="연산할 숫자 입력"></p>
	<p><input type="text" name="num2" placeholder="연산할 숫자 입력"></p>
	<p>
		<input type="hidden" name="operator"><br>
		<button type="button" onclick="sendOk('+')">+</button>
		<button type="button" onclick="sendOk('-')">-</button>
		<button type="button" onclick="sendOk('*')">*</button>
		<button type="button" onclick="sendOk('/')">/</button>
	</p>
</form>

</body>
</html>