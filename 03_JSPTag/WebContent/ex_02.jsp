<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는--랜덤 구구단</title>
</head>
<body>
<%! int total = 0; %>

<% total++;
   int i = (int)(Math.random()*10)+1;
%>

현재 페이지 요청 횟수 : <%= total %>
<hr>

<p>
<h2>랜덤 구구단 : <%=i %>단</h2>

이번에 나오는 구구단은 <%=i %>단입니다. <br>
<% int j = 1;
   while(j<10){ 
     out.println(i + " X " + j + " = " + (i*j)+ "<br>");
     j++;
   }
   
   %>


</p>

</body>
</html>