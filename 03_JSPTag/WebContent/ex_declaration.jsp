<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ϴ� declaration</title>
</head>
<body>
<%! int i =10;
    String str = "Hello World!";
    public int add(int a, int b){
    	return a+b;
    }%>

<%

out.println("i�� ���� :" + i + "<br>");
out.println("str�� ����: " + str + "<br>");
out.println("30�� 50�� ����: " + add(30,50));
%>

</body>
</html>