<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
request.setCharacterEncoding("utf-8");

/* UserVO vo = new UserVO();
vo.setName(request.getParameter("name"));
vo.setBirth(request.getParameter("birth"));
vo.setAge(Integer.parseInt(request.getParameter("age"))); */
%>

<jsp:useBean id="vo" class="com.user.UserVO"/>
<jsp:setProperty property="*" name="vo"/>

<%

String s = "미성년자";
if(vo.getAge()>=19){
	s="성인";
}

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>이름 : <%=vo.getName() %></p>
<p>생년월일: <%=vo.getBirth() %></p>
<p>나이 : <%=vo.getAge() %></p>
<p>너는 <%=s %>(이)다.</p>
</body>
</html>