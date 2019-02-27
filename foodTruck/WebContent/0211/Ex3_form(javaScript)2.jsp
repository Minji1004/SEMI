<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<%-- Ex3_form(javaScript)보다 좋지도 나쁘지도 않음. 편한거 쓰면 된다. --%>
	<script type="text/javascript">
		function check() {
			var f = document.myForm; 
			// 유효성 검사
			if(! f.name.value){  
				alert("이름은 필수입니다.");
				f.name.focus(); 
				return false;
			}
	 		if(! f.age.value){
				alert("나이는 필수입니다.");
				f.age.focus();
				return false;
			} 
	 		
	 		// f.submit();  전송 2번~~  전송 2번되버린..
	 		return true;
		}
		
	</script>
	
	
</head>
<body>
	<h3>form을 이용한 파라미터 전송</h3>
	<p> submit 버튼 : 자바스크립트로 유효성 검사.</p>
	
	<%--submit버튼을 누르면 onsubmit이 실행되어  check함수가 실행되고  check함수의 return 값이 false 아닌 경우 폼을 전송합니다. --%>
	<form name="myForm" action="Ex3_request.jsp" method="post" onsubmit="return check();">
		이름: <input type="text" name="name"> <br> 
		나이: <input type="text" name="age"> <br>
		<button>전송하기</button>  <%-- 전송 1번~~ --%> 
	</form>
</body>
</html>