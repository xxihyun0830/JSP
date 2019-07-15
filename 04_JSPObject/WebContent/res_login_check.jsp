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

   if(id.equals("링딩동")){ %>
      <h1> 환영합니다. Welcome ~ </h1>
	   
   <%}else { %>
	   <h3> 없는 정보입니다. </h3>
	   <a href = "res_login.jsp"> 다시 입력하기 </a>
	  <%} %>

</body>
</html>