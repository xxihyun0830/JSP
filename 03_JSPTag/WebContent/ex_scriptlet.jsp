<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는 __ 구구단 2단 출력하기</title>
</head>
<body>

<% int n = 2;
   int m = 1;
   while(m<10){
	   out.println(n+ " X " + m + " = " + (n*m) +"  <br>");
	   m++;
	 
	   %>
-----------------------------------<br>
	   <%} %>
 
</body>
</html>