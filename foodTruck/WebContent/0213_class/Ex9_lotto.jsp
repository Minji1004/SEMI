<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function lotto() {
		var cnt = inputCount.value;
		cnt = parseInt(cnt);
		// 숫자인지 검사. test()
		if(! /^[1-5]$/g.test(cnt)){
			alert("1~5 숫자만 가능합니다.");
			inputCount.focus();
			return;
		}
		
		/* 위에서 거름.
		if (cnt<1||cnt>5) {
			alert("1~5 숫자만 가능")
			return;
		} 
		*/

		// cnt만큼 로또 뽑기.
		var arr = []; // 빈배열 하나 생성
		var s = "";  // n번째 로또번호들 담을 그릇
		for (var i = 0; i < cnt; i++) {
			for (var j = 0; j < 6; j++) { // 6개의 1~45 난수 발생.
				arr[j] = Math.floor(Math.random() * 45) + 1;
				for (var k = 0; k < j; k++) { // 중복수 검사
					if (arr[j] == arr[k]) {
						j--;
						break;
					}
				}
			}
			// 정렬
			arr.sort(compareAsc);
			s += (i + 1) + "번재 :" + arr.join() + "<br>";
		}

		resultLayout.innerHTML = s;
	
	
	function compareAsc(a, b) {
		return a - b;
	}
	
</script>

</head>
<body>
	<p>
		구매개수(1~5) : <input type="text" id="inputCount">
		<button type="button" onclick="lotto();">로또</button>
	</p>
	<div id="resultLayout"></div>

</body>
</html>