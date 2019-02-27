<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
var s1, s2;
s1="seoul korea";
s2 = s1.charAt(6);
document.write(s2+"<br>");  // k

s1="seoul korea";
s2 = s1.substr(6,3);
document.write(s2+"<br>");  // kor

s1="seoul korea";
s2 = s1.substr(6);
document.write(s2+"<br>");  // korea

s1="seoul korea";
s2 = s1.indexOf("o");
document.write(s2+"<br>");  // 2

s1="seoul korea";
s2 = s1.indexOf("oo");
document.write(s2+"<br>");  // -1

s1="seoul korea";
s2 = s1.toUpperCase();
document.write(s2+"<br>");  // SEOUL KOREA

s1="seoul seoul korea";
s2 = s1.replace("seoul", "super");
document.write(s2+"<br>");  // super seoul korea

// /g 는 싹 바꿔 정규식 ---------------------------
s1="seoul seoul korea";
s2 = s1.replace(/seoul/g, "super");
document.write(s2+"<br>");  // super super korea

s1="abc 123 de 456";
s2 = s1.replace(/\d/g, "");  // \d 숫자를 나타내는 정규표현식.
document.write(s2+"<br>");  // super super korea
//------------------------

s1="very,super,seoul,korea";
s2 = s1.split(",");
document.write(s2[0]+" "+s2[1]+" "+s2[2]+" "+s2[3]+"<br>");  // very super seoul korea

</script>

</head>
<body>

</body>
</html>