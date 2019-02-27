<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
 /* padding:0; margin:0; */
}
</style>
<script type="text/javascript">
function fun(){
	var x = event.clientX;  // document 최좌상단부터 좌표  //용도 : 스크롤바를 내려도 계속 따라옴.
	var y = event.clientY;
	
	var x1 = event.screenX; // browser 최좌상단부터 좌표
	var y1 = event.screenY;
	
	var x2 = event.offsetX; // div내의 좌표, 지역좌표
	var y2 = event.offsetY;

	var x3 = event.pageX; // clientX와 동일하지만 스크롤바가 이동된 경우 스크롤바가 이동된 만큼 좌표에 수치가 합산.
	var y3 = event.pageY;
	
	var s = x+":"+y+", "+x1+":"+y1+", "+x2+":"+y2+", "+x3+":"+y3;
	
	resultLayout.innerHTML = s;
}
</script>
</head>
<body>
<div id="resultLayout"  id="resultLayout" onclick="fun()" style="border: 1px solid black; width: 200px; height: 700px;"></div>
</body>
</html>