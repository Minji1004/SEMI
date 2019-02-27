<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function onlyNum(){
      
      //event : 이벤트 객체
      var code ;
   
      code = event.keyCode
   
      if(code <48 || code >57){
         try{
         event.preventDefault(); //IE 11이상,엣지,
         }catch(e){
            
            event.returnValue = false;
            // IE 11 미만
         }
         
      }
      
   }
   
   function notHangul(obj){
      
      //bs:8 , tab:9, %:37, :39, .:46 
      
      var code = event.keyCode;
      
      if(code==8||code==9||code==37||
            code==46||code==39) return;
      
      obj.value=obj.value.replace(/[ㄱ-ㅎㅏ-ㅣ가-힣]/g,"");
   }
   
   function onlyAlph(){
      
      //event : 이벤트 객체
      var code ;
   
      code = event.keyCode
   
      if((code <65 || code >90) &&(code <90 || code >122)){
         try{
         event.preventDefault(); //IE 11이상,엣지,
         }catch(e){
            
            event.returnValue = false;
            // IE 11 미만
         }
         
      }
      
   }
   
function onlyHan(){
      
      //event : 이벤트 객체
      var code ;
   
      code = event.keyCode
   
      if( code <12592 || code >12687){
         try{
         event.preventDefault(); //IE 11이상,엣지,
         }catch(e){
            
            event.returnValue = false;
            // IE 11 미만
         }
         
      }
      
   }
   
</script>

</head>
<body>

   <p> 숫자만 : <input type= "text"
    onkeypress="onlyNum();" onkeyup ="notHangul(this);"> </p>
       <p> 영문만 : <input type= "text"
    onkeypress="onlyAlph();" onkeyup ="notHangul(this);"> </p>
   
       <p> 한글만 : <input type= "text"
    onkeypress="onlyHan();"> </p>
</body>
</html>