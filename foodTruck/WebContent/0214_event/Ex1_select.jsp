<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// alert(document.myForm);  // window.onload 써야함 밑에 있어서 인식 못함. 
// 자바스크립트에서 밸류값 설정하는 법.
window.onload = function(){
	var f = document.myForm;
	// #1 select 선택  - by value
	// f.age.value="20";
	
	// #2 select choice - by array
	f.age.options[1].selected = true;
}

function result(){
	var f = document.myForm;
	
	// 선택된 값 가져오기 (단일선택)
	// var s = f.subject.value;
	var s = f.subject.options[f.subject.selectedIndex].value;
	alert(s);
}


var n=0;
function add(){
	var f = document.myForm;
	// selected 항목 추가
	// f.test[0] = new Option("홍길동","hong"); // Option(test, value) 
	// f.test[1] = new Option("엄유선","um");	
	var s = (++n) +"test";
	f.test[f.test.length] = new Option(s, n); 
	
	// f.subject[f.subject.length] = new Option("강낭콩","123");  // 그냥놈
}


function remove(){
	var f = document.myForm;
	// 복수선택 시 단일 항목만 지워짐.
/* 	for(var i=0; i<f.test.length; i++){
		if(f.test[i].selected)
			f.test[i] = null;
	} */
	
	// 위 처럼 해버리면 test.length가 점점 짧아지기 때문에 ... 뒤에서부터 지워주면 되지롱~
	for(var i= f.test.length-1; i>=0; i--){
		if(f.test[i].selected)
			f.test[i] = null;
	}
}

function multiResult(){
	var f = document.myForm;
	var s = "";
	
	for(var i=0; i<f.test.length; i++) {
		if(f.test[i].selected) {
			s += f.test[i].value+" ";
		}
	}
	alert(s);
}

</script>
</head>
<body>
	<form name="myForm">
		<select name="subject">
			<option value="java">java</option>
			<option value="spring" selected="selected">spring</option>
			<option value="web">web</option>
			<option value="oracle">oracle</option>
		</select> <br> <select name="age">
			<option value="10">10s</option>
			<option value="20">20s</option>
			<option value="30">30s</option>
			<option value="others">others</option>
		</select> <br> <select name="test" multiple="multiple" size="5"></select>
		<br>

		<button type="button" onclick="result()">result</button>
		<button type="button" onclick="add()">add</button>
		<button type="button" onclick="remove()">remove</button>
		<button type="button" onclick="multiResult()">multiResult</button>
	</form>
</body>

</html>