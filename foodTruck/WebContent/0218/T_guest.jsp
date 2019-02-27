<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<%
    request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	if(name==null) name="";
	String content=request.getParameter("content");
	if(content==null) content="";
/*	
    content=content.replaceAll("&", "&amp;")
            .replaceAll("\"", "&quot;")
            .replaceAll("'", "&apos;")
            .replaceAll(">", "&gt;")
            .replaceAll("<", "&lt;")
            .replaceAll("\n", "<br>")
            .replaceAll("\\s", "&nbsp;"); // \n보다 다음에 있어야함
*/
    Calendar cal=Calendar.getInstance();
    String created=String.format("%tF %tT", cal, cal);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>study</title>
<style type="text/css">
*{
    margin: 0; padding: 0;
}
body {
    font-size: 13px; font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
}
a{
    color: #000000;
    text-decoration: none;
    cursor: pointer;
}
a:active, a:hover {
    text-decoration: underline;
    color: tomato;
}
.title {
    font-weight: bold;
    font-size:15px;
    margin-bottom:10px;
    font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
}
.btn {
    color:#333;
    font-weight:500;
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
    border:1px solid #cccccc;
    background-color:#fff;
    text-align:center;
    cursor:cursor;
    padding:3px 10px 5px;
    border-radius:4px;
}
.btn:active, .btn:focus, .btn:hover {
    background-color:#e6e6e6;
    border-color: #adadad;
    color: #333;
}
.boxTF {
    border:1px solid #999999;
    padding:3px 5px 5px;
    border-radius:4px;
    background-color:#ffffff;
    font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
}
.selectField {
    border:1px solid #999999;
    padding:2px 5px 4px;
    border-radius:4px;
    font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
}
.boxTA {
    border:1px solid #999999;
    height:150px;
    padding:3px 5px;
    border-radius:4px;
    background-color:#ffffff;
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
}
</style>

<script type="text/javascript">
function sendGuest() {
    var f = document.guestForm;

    str = f.name.value;
	str = str.trim();
    if(!str) {
        alert("이름을 입력하세요. ");
        f.name.focus();
        return;
    }
    f.name.value = str;

	str = f.content.value;
    str = str.trim();
    if(!str) {
        alert("내용을 입력하세요. ");
        f.content.focus();
        return;
    }
	f.content.value = str;

    f.action = "T_guest.jsp";
    f.submit();
}

function deleteGuest(num)  {
	if (confirm("위 자료를 삭제하시겠습니까 ?")) {
		alert("삭제...");
	}
}
</script>

</head>

<body>

<table style="width: 600px; margin: 30px auto 10px; border-spacing: 0px;">
<tr height="40">
	<td align="left" class="title">
		| 방명록
	</td>
</tr>
</table>

<form name="guestForm" method="post" action="">
  <table style="width: 600px; margin: 0px auto; border-spacing: 0px; border-collapse: collapse;">
  <tr height="40" style="border-top: 1px solid #cccccc; border-bottom: 1px solid #cccccc;"> 
      <td width="100" bgcolor="#eeeeee" style="text-align: center;">작성자</td>
      <td width="500" style="padding-left:10px;" align="left"> 
        <input type="text" name="name" size="35" maxlength="20" class="boxTF">
      </td>
  </tr>
  
  <tr style="border-bottom: 1px solid #cccccc;"> 
      <td width="100" bgcolor="#eeeeee" style="padding-top:5px; text-align: center;" valign="top">내&nbsp;&nbsp;&nbsp;용</td>
      <td width="500" valign="top" style="padding:5px 0px 5px 10px;" align="left"> 
        <textarea name="content" cols="72" class="boxTA" style="width:97%; height: 70px;"></textarea>
      </td>  
  </tr>
  </table>

  <table style="width: 600px; margin: 0px auto; border-spacing: 0px;">
     <tr align="right"> 
      <td height="45">
          <button type="button" id="btnSend" class="btn" onclick="sendGuest();">등록하기</button>
          <button type="reset" class="btn">다시입력</button>	  
      </td>
    </tr>
  </table>
</form>
content.

<%if(content.length()!=0) { %>
<table style="width: 600px; margin: 15px auto 10px; table-layout:fixed; word-break:break-all; border-spacing: 0px;">
		<tr height='35' bgcolor='#eeeeee'>
		    <td width='50%' style='padding-left: 5px; border:1px solid #cccccc; border-right:none;'>
		          <span style='font-weight: 600;'><%=name%></span>
		    </td>
		    <td width='50%' align='right' style='padding-right: 5px; border:1px solid #cccccc; border-left:none;'>
			      <%=created%> | <a href="javascript:deleteGuest('1');">삭제</a>
		    </td>
		 </tr>

		 <tr height='50'>
		     <td colspan='2' style='padding: 5px; white-space: pre;' valign='top'><%=content%></td>
         </tr>

</table>
<%}%>

</body>
</html>
