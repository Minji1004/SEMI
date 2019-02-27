<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%
 request.setCharacterEncoding("utf-8");

// 파라미터 받기 : getParameter(), getPrameterValues()로 받기
/*  예를 들어
	a.jsp?name=kim&subject=&age=10
	-> 파라미터 받기
	String name = request.getParameter("name");  // "kim"
	String gender = request.getParameter("gender");  // null
	String subject = request.getParameter("subject");  // ""  ,null아니다.
	 단, checkbox나 radio는 check안 하면 null
*/
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
// 파라미터의 이름을 동일하게 여러개 보내면 getParameter()는 하나만 전달 받는다.
// String subjects = request.getParameter("subjects");
// 파라미터를 배열로 반환, 동일한 이름으로 보내는 경우 보통 사용
String[] subjects = request.getParameterValues("subject");
String s="";
if(subjects!=null){
	for(String a : subjects){
		s+=a+",";
	}
	s=s.substring(0, s.length()-1);  // 마지막 ,제거
} 
String hak = request.getParameter("hak");
String[] hobbies = request.getParameterValues("hobby");
String h="";
if(hobbies!=null){
	for(String a : hobbies){
		h+=a+",";
	}
	h = h.substring(0, h.length()-1);
}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>ID:<%=id %></p>
<p>PWD:<%=pwd %></p>
<p>NAME:<%=name %></p>
<p>GENDER:<%=gender %></p>
<p>SDUBJECTS:<%=s %></p>
<p>학력:<%=hak %></p>
<p>취미:<%=h %></p>


</body>
</html>