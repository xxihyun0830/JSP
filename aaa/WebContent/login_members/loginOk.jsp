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
  int num = dao.confirmLogin(vo.getId(), vo.getPw()); 
 
 
  if(num == memberDAO.LOGIN_SUCCESS){ 
	 
 %>
  <script>
    alert( "ȯ���մϴ�. ");
    document.location.href = "/aaa/index.jsp";
  </script>
  
<%
   }else{
	   if(num == memberDAO.LOGIN_FAIL_PW){
%>
        <script>
           alert("��й�ȣ�� �߸��Ǿ����ϴ�. �ٽ� �Է����ּ���");
           history.back();
        </script>
  
<%      }else { %>
         <script >
            alert("�α��ο� �����߽��ϴ�.")
            history.back();
         </script>
	
<%      } 
	  
   }

%>
</body>
</html>