<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> ��Ʃ�� ���� ���� ����</title>
</head>
<body>

<!-- �Ǳ� �Ǵµ� ���� ������ �־ ���� �� �������� �𸣰ڴ�.  -->
<% String album = request.getParameter("album");%>

<%   if(album.equals("M") ){ %>
    <p align = "center">
	 <h2> �����Ͻ� �ٹ� ���� </h2> <br>
	 <h4>����� ������ �ٹ��� [MADE - M] �Դϴ�.</h4>
	 <hr>
	 <h2> Ÿ��Ʋ �� MV</h2>
	 <iframe width="560" height="315" src="https://www.youtube.com/embed/2ips2mM7Zqw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	  
	   </p>  
 <%  }else if(album.equals("A")){ %>
        <p align = "center">
	       <h2> �����Ͻ� �ٹ� ���� </h2> <br>
	       <h4>����� ������ �ٹ��� [MADE - A] �Դϴ�.</h4>
	       <hr>
	        <h2> Ÿ��Ʋ �� MV</h2>
	         <iframe width="560" height="315" src="https://www.youtube.com/embed/oFmfi1vM7co" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	   </p>      
   <%}else if(album.equals("D")){ %>
    <p align = "center">
	       <h2> �����Ͻ� �ٹ� ���� </h2> <br>
	       <h4>����� ������ �ٹ��� [MADE - D] �Դϴ�.</h4>
	       <hr>
	         <h2> Ÿ��Ʋ �� MV</h2>
	         <iframe width="560" height="315" src="https://www.youtube.com/embed/MBNQgq56egk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	         
	     </p>
	  <%}else if(album.equals("E")){ %>
	  
    <p align = "center">
	       <h2> �����Ͻ� �ٹ� ���� </h2> <br>
	       <h4>����� ������ �ٹ��� [MADE - E] �Դϴ�.</h4>
	       <hr>
	         <h2> Ÿ��Ʋ �� MV</h2>
	         <iframe width="560" height="315" src="https://www.youtube.com/embed/D8t8A8E_Tqc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	         
	     </p>
  <%}%>
</body>
</html>