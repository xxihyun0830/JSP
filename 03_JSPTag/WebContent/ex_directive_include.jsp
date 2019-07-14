<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는 __ directive- include</title>
</head>
<body>
<%@ include file = "img/total.jsp" %>
<%! int total = 1000; %>
<% total ++; %>
<h2>방문자 수 :  <%= visit %></h2>
<h3> total : <%=total %></h3>
<%-- total.jsp에서 전역변수로 선언된 visit를 가져다 쓸 수 있다.
     total ++ 또는 visit ++을 해줬기 때문에 새로고침을 하면 수 증가--%>

<h3>바디 부분 </h3>
<br>

<%@ include file = "img/bob.jsp" %>

</body>
</html>