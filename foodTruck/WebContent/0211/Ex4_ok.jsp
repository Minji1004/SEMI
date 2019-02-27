<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
   // 파라미터
   String name = request.getParameter("name");
   int age = Integer.parseInt(request.getParameter("age"));
   String result = "성인";
   
   if(age<19)
   result= "미성년";
   
   //QueryString (GET 방식에서의 파라미터)
   String queryString = request.getQueryString();
   String method = request.getMethod();
   String requestURI=request.getRequestURI();
   StringBuffer requestURL = request.getRequestURL();
   String cp = request.getContextPath();
   String ip = request.getRemoteAddr();
   int port = request.getRemotePort();
   String referer = request.getHeader("Referer");
   if(referer==null){
	   referer = "이전주소없음";
   }
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<p>이름 : <%= name %></p>
<p>나이 : <%= age %></p>
<p>결과 : <%= result %></p>
<p>queryString : <%= queryString %></p>
<p>method : <%= method %> </p>
<p> requestURI : <%= requestURI %></p>
<p>requestURL : <%= requestURL %></p>
<p>cp : <%= cp %></p>
<p>ip : <%= ip %></p>
<p> port : <%= port %></p>
<p> referer : <%= referer %></p>


</body>
</html>