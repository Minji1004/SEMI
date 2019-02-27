<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function fun1(){
	var s = subject.value;
	alert(s);
}

function fun2(){
	var id = document.getElementById("userId").value;
	//var id = userId.value;
	if(!id){
		msgId.style.display="";
		document.getElementById("userId").focus();
	} else {
		msgId.style.display="none";
	}
} 
 
function fnReturn(){
	if(event.keyCode==13){
		userPwd.focus();
	}
}

</script>
</head>
<body>

<select id = "subject" onchange="fun1()">
	<option value = "java">java</option>
	<option value = "web">web</option>
	<option value = "spring">spring</option>
	<option value = "oracle">oracle</option>
</select>
<br>

<input type = "text" id="userId" placeholder="아이디" onkeypress="fnReturn()" onblur="fun2()"><span id="msgId" style="display:none">put your ID</span><br>
<input type = "text" id="userPwd" placeholder="패스워드"><br>

</body>
</html>