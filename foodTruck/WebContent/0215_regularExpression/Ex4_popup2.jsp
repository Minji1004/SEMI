<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="T_util.js"></script>
<script type="text/javascript">
var new_window = null
function sub(){
	// winOpen("T_member.html","member");
	var url = "T_member.html";
	//window.open(url, "window_name");
	new_window = window.open(url, "window_name", "left=20, top=20, width=700, height=500");
}

function winClose(){
	if(new_window!=null){
		new_window.close();
	}
	new_window=null;
	
}

</script>
</head>
<body>

<button type="button" onclick="sub()">pop</button>
<button type="button" onclick="winClose()">close</button>
</body>
</html>