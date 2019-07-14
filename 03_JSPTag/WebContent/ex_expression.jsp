<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는__expression</title>
</head>
<body>
<% String name = "홍길동";
   int age = 30;
   %>
   
   이름 : <%=name %><br>
   나이 : <%= age %>
</body>
</html>