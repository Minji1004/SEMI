<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function stringBytes(str) {
		/* 향포문으로 비트연산자 사용
		var strByteLength = function(s,b,i,c){
			for(b=i=0; c=s.charCodeAt(i++); b+=c>>11? 3:c>>7? 2:1);
		 	return b
		}
		document.getElementById("memoBytes").innerHTML = strByteLength(str); */

		var strLen = str.length;
		var totalBytes = 0;

		var oneChar;
		for (var i = 0; i<strLen; i++) {
			oneChar = str.charAt(i);
			if (escape(oneChar).length > 4) { // 한글인지 확인한다. 한글은 length가 6이 됨.
				totalBytes += 3; // 한글을 3byte로.
				// totalBytes += 2; // 한글을 2byte로.
			} else {
				totalBytes++;
			}
		}
		return totalBytes;
	}

	
	function stringCut(obj, maxByte) {
		var str = obj.value;
		var strLen = str.length;
		var totalByte = 0;

		var oneChar;
		var len = 0;

		for (var i = 0; i<strLen; i++) {
			oneChar = str.charAt(i);
			if (escape(oneChar).length > 4) {
				totalByte += 3; // 한글을 3byte로.
			} else {
				totalByte++;  // 한글 아니면 1Byte만 증가.
			}

			if (totalByte <= maxByte) {
				len = i + 1;  
				//  대		4Byte
				//  대한		6Byte
				//  대한민	9Byte
				//  대한민국	12Byte
				//  밑에서 len사용하는데  바로 위와 같은 경우, len길이 증가시키면 대한민국 나와버림 
			}
		}

		if (totalByte > maxByte) {
			alert(maxByte + 'byte를 초과할 수 없습니다.');
			str = str.substr(0, len);
			obj.value = str;
		}
	}

	
	function checkString() {
		var id = document.getElementById("memo");
		var maxBytes = 10;

		var totalBytes = stringBytes(id.value);
		if(totalBytes > maxBytes){
			stringCut(id, maxBytes);
			totalBytes = maxBytes;
		}
		
		memoBytes.innerHTML = totalBytes + " bytes";
	}
</script>
</head>
<body>
	<!--향포문으로 비트연산자 사용  <textarea rows="5" cols="60" id="memo" onkeyup="stringBytes(this.value);"></textarea><br> -->

	<textarea rows="5" cols="60" id="memo" onkeyup="checkString();"></textarea>
	<br>
	<div id="memoBytes"></div>


</body>
</html>