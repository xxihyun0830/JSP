<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*" %>


<% String name = request.getParameter("Name");
   String id = request.getParameter("Id");
   String pw = request.getParameter("Pw");
   String major = request.getParameter("Major");
   String region = request.getParameter("Region");
   String [] hobbies = request.getParameterValues("Hobby");
   
   response.setCharacterEncoding("utf-8");
   response.setContentType("text/html; charset=utf-8");
   
   %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는 거지로오롱ㄹ오롱ㅇ</title>
</head>
<body>
이름: <%= name %> <br>
ID: <%= id %> <br>
PW: <%= pw %> <br>
전공: <%= major %><br>
지역: <%= region %><br>
취미: <%= Arrays.toString(hobbies) %>

</body>
</html>