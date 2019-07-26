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
  int num = dao.confirmLogin(vo.getId(), vo.getPw()); 
 
 
  if(num == memberDAO.LOGIN_SUCCESS){ 
	 
 %>
  <script>
    alert( "환영합니다. ");
    document.location.href = "/aaa/index.jsp";
  </script>
  
<%
   }else{
	   if(num == memberDAO.LOGIN_FAIL_PW){
%>
        <script>
           alert("비밀번호가 잘못되었습니다. 다시 입력해주세요");
           history.back();
        </script>
  
<%      }else { %>
         <script >
            alert("로그인에 실패했습니다.")
            history.back();
         </script>
	
<%      } 
	  
   }

%>
</body>
</html>