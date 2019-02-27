<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="쌤_util.js"></script>

<script type="text/javascript">
function sub(){
	if(! isValidDateFormat(inputString.value)){
		alert("DateFormat Error~");
		return;
	}
	
	if(! isImageFile(upload.value)){
		alert("only image File");
		return;
	}
	
	alert("confirm complete~")
}

function commas(obj){
	var s = obj.value;
	s = removeComma(s);
	obj.value = numberWithCommas(s);
	// obj.value = parseInt(obj.value).toLocaleString(s);  // 비추, 숫자크면 안되고,, 까탈스러운녀석임.
	
}
</script>
</head>
<body>
<p> <input type="text" id="inputString"></p>
<p> <input type="file" id="upload"></p>
<p> <input type="text" id="numString" onkeyup="commas(this);"></p>
<p> <input type="button" onclick="sub()" value="confrim"></p>
</body>
</html>