<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function sub1(){
	var obj = document.getElementById("layout");
	
	// 속성값 확인
	var s = obj.getAttribute("style");
	// 속성설정
	// 객체.setAttribute("속성명", "속성값");
	alert(s);
	
}

 function sub2(){
	var obj = document.getElementById("layout");
	var node = document.createElement("p");  // p태그 하나 만든다.
	var textNode = document.createTextNode("Last~");
	node.appendChild(textNode);
	obj.appendChild(node);
} 

function sub3(){
	var obj = document.getElementById("layout");
	var node = document.createElement("p");  // p태그 하나 만든다.
	var textNode = document.createTextNode("Insert~");
	node.appendChild(textNode);
	
	obj.insertBefore(node, obj.childNodes[2]);  //(집어넣을대상, 위치) //위치:<p>와<p>사이에 enter -> index먹음.
}

function sub4(){
	var obj = document.getElementById("layout");
	if(obj.childNodes.length>1){
		obj.removeChild(obj.childNodes[1]);
	}
}


function sub5(){
	var obj = document.getElementById("layout");
	obj.style.border = "none";
	// obj.style.removeProperty("broder") // chrome, IE9 이상만.
	
}

</script>
</head>
<body>

<div id ="layout" style="width:300px; height:300px; border:1px solid;">
	<p>java</p>
	<p>android</p>
</div>
<br><hr>
<div>
	<button type="button" onclick="sub1()">information</button>
	<button type="button" onclick="sub2()">add</button>
	<button type="button" onclick="sub3()">insertAdd_specificlNode</button>
	<button type="button" onclick="sub4()">deleteNode</button>
	<button type="button" onclick="sub5()">delete_specificStyle</button>
</div>
</body>
</html>