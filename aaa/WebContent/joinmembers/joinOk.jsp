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
<!--  controller ���� vo ��ü�� ����� ��  -->
 
 <% 
   memberDAO dao = memberDAO.getInstance();
 
   if(dao.confirmId(vo.getId()) == memberDAO.MEMBER_EXISTANCE){ 
	 
 %>
  <script>
    alert("�����ϴ� ���̵��Դϴ�.")
    history.back();
  
  </script>
  
<%
   }else{
	   
	   int num = dao.insertMember(vo);
	   
	   if(num == memberDAO.JOIN_SUCCESS){
		   %>
		   
		   <script>
		   alert ("ȸ�� ������ �����մϴ�.")
		   document.location.href = "/aaa";
		   </script>
		   
	<% }else{
		   
	%> <script>
		 alert("ȸ�� ���� ���� FAILED");
		 document.location.href = "/aaa";
		 
		 </script>
		   
	  <%} 
   }

%>
</body>
</html>