<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ϴ�--���� ������</title>
</head>
<body>
<%! int total = 0; %>

<% total++;
   int i = (int)(Math.random()*10)+1;
%>

���� ������ ��û Ƚ�� : <%= total %>
<hr>

<p>
<h2>���� ������ : <%=i %>��</h2>

�̹��� ������ �������� <%=i %>���Դϴ�. <br>
<% int j = 1;
   while(j<10){ 
     out.println(i + " X " + j + " = " + (i*j)+ "<br>");
     j++;
   }
   
   %>


</p>

</body>
</html>