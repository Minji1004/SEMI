<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function check(){
	var f = document.form1;
	
	if(! /^[가-힣]+$/g.test(f.name.value)){  
	 	alert("이름은 한글만 가능합니다.");
		return false;
	}
	if(! /\b[0-9]{4}[-]?[0-9]{1,2}[-]?[0-9]{1,2}\b/.test(f.birth.value)){  
	 	alert("생년월일은 yyyy-mm-dd 형식만 가능합니다.");
		return false;
	}
	if(! /^[0-9]+$/.test(f.basicpay.value)){  
	 	alert("기본급은 숫자만 가능합니다.");
		return false;
	}
	if(! /^[0-9]+$/.test(f.sudang.value)){  
	 	alert("수당은 숫자만 가능합니다.");
		return false;
	}

	return true;
}


</script>
</head>
<style type="text/css">
.cate{
	width:100px;
	
}
</style>
<body>

<div>
<table style="border: 1px solid black;">
	<tr>
		<td class=cate>이름 : </td>
		<td>
		<input type="text" name="name"></td>
	</tr>
	<tr>
		<td class=cate>생년월일 : </td>
		<td>
		<input type="text" name="name"></td>
	</tr>
		<tr>
		<td class=cate>전화번호 : </td>
		<td>
		<input type="text" name="name"></td>
	</tr>
		<tr>
		<td class=cate>기본급 : </td>
		<td>
		<input type="text" name="name"></td>
	</tr>
		<tr>
		<td class=cate>수당 : </td>
		<td>
		<input type="text" name="name"></td>
	</tr>
	
	
</table>
</div>













<form name="form1" action="insa_ok.jsp" method="post" onsubmit="return check()" >
	이름: <input type="text" name="name"><br>
	생년월일: <input type="text" name="birth"><br>
	전화번호: <input type="text" name="tel"><br>
	기본급: <input type="text" name="basicpay"><br>
	수당: <input type="text" name="sudang"><br>
	<input type="submit" value="전송하기">
</form>



</body>
</html>