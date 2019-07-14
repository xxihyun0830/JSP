<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는 declaration</title>
</head>
<body>
<%! int i =10;
    String str = "Hello World!";
    public int add(int a, int b){
    	return a+b;
    }%>

<%

out.println("i의 값은 :" + i + "<br>");
out.println("str의 값은: " + str + "<br>");
out.println("30과 50의 합은: " + add(30,50));
%>

</body>
</html>