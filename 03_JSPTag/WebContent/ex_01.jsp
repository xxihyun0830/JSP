<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내가 하는--오늘의 운세</title>
</head>
<body>
<%! int total = 0;
    String [] col = {"Black", "Red","Yellow","Green","Blue"};
    
    %>
    
<% int j = 1000;
   total++;
   int r = (int)(Math.random()*10) + 1; 
   //랜덤을 지역변수로 설정해야 랜덤 수를 얻을 수 있다.
   int rc = (int)(Math.random()*5) ;
%>

<p>
  <h1> JSP Tag Practice</h1>
  
    두 변수가 선언된 태그에 따라 값의 변화를 확인해 보세요.<br>
    전체 요청 횟수 : <%= total %>, 지역 변수 j의 값: <%=j %>
</p>
 
    <hr>
 <p>
    <h2 >오늘의 운세</h2>
     오늘의 행운의 숫자는 <%=r %>이고, 행운의 색깔은 <%=col[rc] %>입니다.
     
 </p>
</body>
</html>