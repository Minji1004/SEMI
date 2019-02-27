<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
if(typeof String.prototype.trim !== "function"){
	String.prototype.trim = function() {
		var p = /(^\s*)|(\s*$)/g;    // ^:앞에것들  $:뒤 *:모두 \s:공백 
		return this.replace(p, "");
	}
};

var a = "    대한     ";
a = a.trim();
alert(":"+a+":");

</script>

</head>
<body>

</body>
</html>