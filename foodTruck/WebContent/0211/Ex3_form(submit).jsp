<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>form을 이용한 파라미터 전송(submit 버튼)</h3>
	<p> submit 버튼은 서버의 요청주소(action 속성의 주소)로 데이터를 전송하는 기능을 가지고 있다.</p>

	<form action="Ex3_request.jsp" method="post">
		<%--  (HTML5) submit버튼으로 유효성 검사 : required="required"--%>
		이름: <input type="text" name="name" required="required"> <br> 
		나이: <input type="text" name="age" required="required"> <br>
		
		<button>전송하기</button>
		<button type="submit">전송하기</button>
		<input type="submit" value="전송하기">
		<input type="image" src="btn_confirm.png">
	</form>
	
</body>
</html>