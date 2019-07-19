<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="joinmembers.model.memberDAO" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id = "vo" class = "joinmembers.model.memberVO" ></jsp:useBean>
<jsp:setProperty name = "vo" property = "*"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--  controller 에서 vo 객체를 만들어 주  -->
 
 <% 
   memberDAO dao = memberDAO.getInstance();
 
   if(dao.confirmId(vo.getId()) == memberDAO.MEMBER_EXISTANCE){ 
	 
 %>
  <script>
    alert("존재하는 아이디입니다.")
    history.back();
  
  </script>
  
<%
   }else{
	   
	   int num = dao.insertMember(vo);
	   
	   if(num == memberDAO.JOIN_SUCCESS){
		   %>
		   
		   <script>
		   alert ("회원 가입을 축하합니다.")
		   document.location.href = "/aaa";
		   </script>
		   
	<% }else{
		   
	%> <script>
		 alert("회원 가입 실패 FAILED");
		 document.location.href = "/aaa";
		 
		 </script>
		   
	  <%} 
   }

%>
</body>
</html>