<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>concert seat</title>
</head>
<body>

<form action = "concert_res.jsp">
<p align = "center">
<h1> 좌석을 선택하세요</h1>
<br>
<%
for(char c= 'A'; c<='Z';c++){ %>
 <h2> <%= c %> </h2>  

<%
 }%>
<br>
<% for(int r= 1; r<=3; r++){  %>
	    <%= r %>
	<%for(int j = 0; j<26 ;j++){ %>
	   <input type = "checkbox" name = "seat_num" >
	   
	<%}%>
	 <br>   
<%} %>

<br>

<input type = "submit" value = "예약 ">
<input type = "reset" value = "재설정">

</p>
</form>
</body>
</html>