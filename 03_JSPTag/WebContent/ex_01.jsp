<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ϴ�--������ �</title>
</head>
<body>
<%! int total = 0;
    String [] col = {"Black", "Red","Yellow","Green","Blue"};
    
    %>
    
<% int j = 1000;
   total++;
   int r = (int)(Math.random()*10) + 1; 
   //������ ���������� �����ؾ� ���� ���� ���� �� �ִ�.
   int rc = (int)(Math.random()*5) ;
%>

<p>
  <h1> JSP Tag Practice</h1>
  
    �� ������ ����� �±׿� ���� ���� ��ȭ�� Ȯ���� ������.<br>
    ��ü ��û Ƚ�� : <%= total %>, ���� ���� j�� ��: <%=j %>
</p>
 
    <hr>
 <p>
    <h2 >������ �</h2>
     ������ ����� ���ڴ� <%=r %>�̰�, ����� ������ <%=col[rc] %>�Դϴ�.
     
 </p>
</body>
</html>