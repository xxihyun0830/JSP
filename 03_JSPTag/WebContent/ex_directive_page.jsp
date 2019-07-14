<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.Calendar"  import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는__directive</title>
</head>
<body>

<%! 

    Calendar cal =  Calendar.getInstance();

    int year = cal.get(Calendar.YEAR) ;
    int month = cal.get(Calendar.MONTH);
    int date = cal.get(Calendar.DATE);
    
    Date today = new Date();		
    %>
<%
out.println("오늘은 " + year + "년 " + (month+1) + "월 " + date + "일입니다.");

%>
<hr>
현재 날짜 : <%=today %><br>
       

</body>
</html>