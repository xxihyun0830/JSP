<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% String authcode = (String)session.getAttribute("authcode"); 
   String code = request.getParameter("code");
   %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>concert_auth_check</title>
</head>
<body>

<%System.out.println(authcode); %>
<% if (code.equals(authcode)){  %> 
<h1>인증에 성공했습니다</h1>
<form action = "concert_seat.jsp " method = "get">
   <input type = "submit"   value = "좌석 선택 -->"> 
   </form>
<%}

else{%>

<h1>인증에 실패했습니다.</h1>
  <form action = "concert_check.jsp" method = "get">
  <input type = "submit"  value = "인증 번호 재입력 -->"> 
  </form>
<%} %>

</body>
</html>