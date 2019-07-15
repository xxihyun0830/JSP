<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"  %>
    
    
<%  String req_protocol = request.getProtocol();
    String req_method = request.getMethod();
    
    String req_URI = request.getRequestURI();
    StringBuffer req_url = request.getRequestURL();
    String getparam = request.getParameter("age");
    Enumeration <String> req_param = request.getParameterNames();
    String contextpath = request.getContextPath();
    String serverName = request.getServerName();
    int serverPort =  request.getServerPort();

%>  
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내가 하는 -- JSP Object_request 객체</title>
</head>
<body>
<%! int age = 100; %>
요청 정보 프로토콜 : <%= req_protocol %><br>
요청 정보 전송 방식: <%= req_method %><br>
요청 URI 정보 : <%= req_URI %><br>
요청 URL 정보 : <%= req_url.toString() %> <br>
요청 파라미터 변수 :
 <% while(req_param.hasMoreElements()){
	              System.out.println("parameter variable : "+req_param.nextElement());
} %><br>

age  : <%= getparam %> <br>
컨텍스트 루트 경로 : <%=contextpath %><br>
서버 이름 : <%= serverName %><br>
서버 포트 번호: <%= serverPort %>



</body>
</html>