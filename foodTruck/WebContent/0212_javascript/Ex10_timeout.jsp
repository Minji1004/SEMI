<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
// 2초마다 반복(시간출력)
var tid = setInterval(() =>{document.write("<p>"+ new Date()+"</p>");
}, 2000);

// 10 후에 한번만 실행
setTimeout(function() {
	clearInterval(tid);
}, 10000);





</script>


</head>
<body>

</body>
</html>