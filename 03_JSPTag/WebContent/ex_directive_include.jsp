<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ϴ� __ directive- include</title>
</head>
<body>
<%@ include file = "img/total.jsp" %>
<%! int total = 1000; %>
<% total ++; %>
<h2>�湮�� �� :  <%= visit %></h2>
<h3> total : <%=total %></h3>
<%-- total.jsp���� ���������� ����� visit�� ������ �� �� �ִ�.
     total ++ �Ǵ� visit ++�� ����� ������ ���ΰ�ħ�� �ϸ� �� ����--%>

<h3>�ٵ� �κ� </h3>
<br>

<%@ include file = "img/bob.jsp" %>

</body>
</html>