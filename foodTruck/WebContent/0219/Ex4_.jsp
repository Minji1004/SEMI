<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function send1(){
	// &, 공백, +, % 등 넣으면 get방식안댐.
	// -> 영숫자가 아니면 반드시 인코딩 해야한다.
	var name = "자&바";  
	var city = "서 울";

	// query 전체를 인코딩하면 안댐.. query의 &는 구분자로 필요함.
	// encodeURIComponet()
	var query = "name="+encodeURIComponent(name)+"&city="+encodeURIComponent(city);  // "" 공백넣는거 주의!
	location.href="Ex4_ok.jsp?"+query;  // 서버로 가버림
}

function send2(){
	 <%-- 스크립트 변수는 JSP의 스크립릿(<% %>), 표현식(<%= %>)에서는 사용 불가.  --%>
	var name = '<%=URLEncoder.encode("자&바", "utf-8") %>'; 
	var city = '<%=URLEncoder.encode("서 울", "utf-8") %>'; 
	
	var query = "name="+name+"&city="+city;  
	location.href="Ex4_ok.jsp?"+query; 
	
	
	<%-- 
	var name = "자^바";
	자바의 name변수를 인코딩하라는 건데,, 자바의 name변수는 없어->오류생김.
	name = <%=URLEncoder.encode(name,"utf-8") %>; 
	 --%>
}

</script>
</head>
<body>


<a href="javascript:send1()">javascript로  인코딩</a><br>
<a href="javascript:send2()">JAVA로  인코딩</a>
</body>
</html>