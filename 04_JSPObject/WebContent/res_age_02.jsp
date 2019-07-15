<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>나이 확인 중..</title>
</head>
<body>
<% 
   int i = Integer.valueOf(request.getParameter("age"));

   if(i> 19){
      response.sendRedirect("res_age_03.jsp"); 
   }else{
	  response.sendRedirect("res_age_04.jsp");
   }
%>

</body>
</html>