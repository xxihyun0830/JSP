<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import = "java.util.*" %>
    
 <%
    UUID uuid = UUID.randomUUID();
    System.out.println(uuid);
    String [] uuids = uuid.toString().split("-");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>concert check Number</title>
</head>
<body>
<h2> 회원 인증 페이지</h2>
<h1> 인증 문자 :  <del><%= uuids[1] %></del> </h1> 
<form action = "concert_auth_check.jsp" method = "post">
<small> 위의 인증문자를 입력하세요</small>
<input type = "text" name = "code" size = "5">
<input type = "submit" value = "확인">

</form>


</body>
</html>
<%  session.setAttribute("authcode", uuids[1]);  %>