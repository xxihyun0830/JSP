<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> login check </title>
</head>
<body>

<% 

String id = request.getParameter("id");

response.setCharacterEncoding("utf-8");
response.setContentType("text/html; charset = utf-8");

   if(id.equals("abc1234")){ 
     response.sendRedirect("res_login_welcome.jsp");
   }else {
	   response.sendRedirect("res_login_fail.jsp");
   } %>

</body>
</html>