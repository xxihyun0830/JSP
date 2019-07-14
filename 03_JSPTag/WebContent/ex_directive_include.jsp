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
<!-- 이렇게 하면 새로고침 할 때마다 방문자 수 증가하게 됨! -->
<br>

<h3>바디 부분 </h3>
<br>

<%@ include file = "img/bob.jsp" %>

</body>
</html>