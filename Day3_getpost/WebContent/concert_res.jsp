<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "java.util.*" %>
    
<% String[] arr = request.getParameterValues("seat_num"); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>예약 완료 페이지</title>
</head>
<body>
<p align = "center">
<h2>예약된 좌석</h2>
<br>
<%arr.toString();%>


</p>
</body>
</html>