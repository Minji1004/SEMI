<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	
	<script type="text/javascript">
		function sendRequest() {
			var f = document.myForm;  //  자바스크립트 변수타입 분류 선언하지 않음.
			// console.log(f);
			// alert(f.name.value);  
			// 유효성 검사
			if(! f.name.value){   //  if(! f.name.value == "") { 자바스크립트는 ""을 null로 인식함.
				alert("이름은 필수입니다.");
				f.name.focus();  //  이름입력 하는 곳으로 커서 이동.
				return;
			}
	 		if(! f.age.value){
				alert("나이는 필수입니다.");
				f.age.focus();
				return;
			} 
		f.submit(); //  서버로 전송.
		}
			
	</script>
	
	
</head>
<body>
	<h3>form을 이용한 파라미터 전송</h3>
	<p> submit 버튼이외는 서버로 파라미터를 전송할 수 있는 기능이 없으므로 자바스크립트를 이용한다.</p>

	<form name="myForm" action="Ex3_request.jsp" method="post">
		이름: <input type="text" name="name"> <br> 
		나이: <input type="text" name="age"> <br>
		
		<!-- javaScript : 브라우저가 해석합니다. -->
		<!-- 자바스크립트의 메소드로 유효성 검사 시행 -->
		<a href="javascript:sendRequest()">전송하기</a>
		<button type="button" onclick="sendRequest();">전송하기</button>
		<input type="button" onclick="sendRequest();" value="전송하기">
		
		<!--  버튼 뉴르는 순간 제출해버려서 유효성검사 불가.  -->
		<button type="submit" onclick="sendRequest();">전송하기</button>
	</form>

	
</body>
</html>