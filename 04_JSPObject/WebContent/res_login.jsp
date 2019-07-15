<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title> 내가 하지로올ㅇㄹ나멀ㅇ;ㅣ마ㅓㄴㅇㄹ</title>
</head>
<body>
<p align = "center">
   <h2> sendRedirect 로그인하는 페이지를 만들어 보자</h2>
</p>

<!-- html 테이블 만들기

<table></table>
<tr> 행
<td> 칸  -> 행을 먼저 만들고나서 그 안에 칸을 넣는다.

< table 구성요소 align="center>

 -->
 <!-- 
<table border = "1" align = "center" height = "200" width="400">

<tr>
  <td colspan = "3" bgcolor = "blue" align = "center"> Hello </td> 
</tr>
<tr align = "center" >
  <td > A-1</td>
  <td > A-2</td>
  <td > A-3</td>
</tr>
<tr align = "center">
  <td> B-1</td>
  <td> B-2</td>
  <td> B-3</td>
</tr>
<tr align = "center">
  <td rowspan="2" bgcolor = "red">  </td>
  <td> C-2 </td>
  <td> C-3 </td>
</tr>
<tr align = "center">
  <td> D-2 </td>
  <td> D-3 </td>
</tr>

</table>
 -->
 
<hr>
<form action = "res_join_welcome.jsp">

<table border = "1" align = "center" width = "300" height = "50" >
<tr align = "center"> 
  <td > 아이디 </td>
  <td rowspan="2" bgcolor="pink"> Ok </td>
</tr>

<tr align = "center"> 
  <td> 비밀번호 </td>  
</tr>

</table>

</form>


</body>
</html>