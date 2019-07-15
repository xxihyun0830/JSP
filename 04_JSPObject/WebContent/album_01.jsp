<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form action = "album_02.jsp" method = "post">
<div align = "center">
 <table  border = "1"  width = "600" height = "800">
  <tr align = "center"> 
    <td> </td>
    <td> 앨범커버</td>
    <td> 가수 </td>
    <td> 앨범제목</td>
    <td> 발매일</td>
   </tr>
   
  <tr align = "center"> 
     <td>
        <input type = "radio" name = "album" value = "M">  
     </td>
     <td>
        <img src="cover/M.jpg" width = "100">
     </td>
     <td> BIGBANG</td>
     <td> MADE - M</td>
     <td> 2015년 5월 1일</td>
  </tr>
  <tr align = "center"> 
     <td>
        <input type = "radio" name = "album" value = "A">  
     </td>
     <td>
        <img src="cover/A.jpg" width = "100">
     </td>
     <td> BIGBANG</td>
     <td> MADE - A</td>
     <td> 2015년 6월 1일</td>
  </tr>
    <tr align = "center"> 
     <td>
        <input type = "radio" name = "album" value = "D">  
     </td>
     <td>
        <img src="cover/D.jpg" width = "100">
     </td>
     <td> BIGBANG</td>
     <td> MADE - D</td>
     <td> 2015년 7월 1일</td>
  </tr>
    <tr align = "center"> 
     <td>
        <input type = "radio" name = "album" value = "E">  
     </td>
     <td>
        <img src="cover/E.jpg" width = "100">
     </td>
     <td> BIGBANG</td>
     <td> MADE - E</td>
     <td> 2015년 8월 1일</td>
  </tr>
  <tr align = "center">
   <td colspan = "5">
     <input type = "submit" value = "확인">
   </td>
  </tr>
  
</table>

</form>
</div>
</body>
</html>