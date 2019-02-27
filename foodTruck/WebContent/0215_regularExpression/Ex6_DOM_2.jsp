<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function getElements(attrName, attrValue){
	 // 모든 요소를 싹뒤져야해.. 누가 속성을 가지고 있는지 몰라..
	 // 모든 Tag에서 해당 속성과 속성의 값을 검색하여 해당 태그를 반환하는 함수.
	 var elements = document.getElementsByTagName("*"); // body의 모든태그를 담는다.
	 var foundElements=[];
	 
	 for(var i=0; i<elements.length; i++){
		 if(elements[i].hasAttribute(attrName) && 
				 elements[i].getAttribute(attrName).toLowerCase()==attrValue.toLowerCase())
		{
			 foundElements.push(elements[i]);  // 매개변수로 받은 속성이름과 속성값에 일치하는 태그를 담는다.
		 }
	 }
	 
	 
	 
	 return foundElements;   // 위의 과정을 통해 담아진 배열객체를 리턴함.
}



function sub(){
	// id 접근
	var name = document.getElementById("name").value;
	// name 속성으로 접근
	var age = document.getElementsByName("age")[0].value;
	// tag로 접근
	var birth = document.getElementsByTagName("input")[2].value;
	// 속성으로 접근	
	var chk = getElements("type","checkbox");
	if(chk[0].checked){
		alert("당신은 최현웅입니다.");	
	}
	// class 접근(브라우저에 따라 지원하지 않을 수 있다.)
	var tel = document.getElementsByClassName("tc")[0].value;
	alert(tel);
	
	
	
}




</script>
</head>
<body>
<form >
	이름 : <input type="text" id ="name"><br>
	나이 : <input type="text" name ="age"><br>
	생년월일 : <input type="text"><br>
	<input type="checkbox" value="1">최현웅 재수없으면 체크<br>
	전화번호: <input type="text" class="tc"><br>
	<hr>
	<button type="button" onclick="sub();">ok</button>
</form>
</body>
</html>