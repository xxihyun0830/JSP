<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<style >
 .login_btn {
             width: 60px;
             height: 50px;
             background-color: lightblue;
             }

</style>
<meta charset="utf-8">
<title> 이거 꼭 다시 해보기 2019/07/15</title>
</head>
<body>
  <div align = "center">
     <h2> sendRedirect 로그인하는 페이지를 만들어 보자</h2>
     <hr>
     <br>
     
     <form action = "res_login_check.jsp" method = "post">
       <table border="1" cellpadding = "0" cellspacing = "0">
         <tr>
           <td>
             <input type = "text" name = "id" size = "10" placeholder = "아이디">
           </td>
           <td rowspan = "2">
             <input type = "submit" value = "LOGIN" class = "login_btn">
           </td>
         </tr>
         <tr>
           <td>
             <input type = "password" name = "pw" size = "10" placeholder = "password">
            </td>
          </tr>
       
       </table>

     </form>
   </div>

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

</body>
</html>