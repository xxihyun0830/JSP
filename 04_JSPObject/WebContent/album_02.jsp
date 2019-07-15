<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 유튜브 ㄱㄱ 덕질 ㄱㄱ</title>
</head>
<body>

<!-- 되긴 되는데 뭐가 문제가 있어서 빨간 줄 투성인지 모르겠다.  -->
<% String album = request.getParameter("album");%>

<%   if(album.equals("M") ){ %>
    <p align = "center">
	 <h2> 선택하신 앨범 정보 </h2> <br>
	 <h4>당신이 선택한 앨범은 [MADE - M] 입니다.</h4>
	 <hr>
	 <h2> 타이틀 곡 MV</h2>
	 <iframe width="560" height="315" src="https://www.youtube.com/embed/2ips2mM7Zqw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	  
	   </p>  
 <%  }else if(album.equals("A")){ %>
        <p align = "center">
	       <h2> 선택하신 앨범 정보 </h2> <br>
	       <h4>당신이 선택한 앨범은 [MADE - A] 입니다.</h4>
	       <hr>
	        <h2> 타이틀 곡 MV</h2>
	         <iframe width="560" height="315" src="https://www.youtube.com/embed/oFmfi1vM7co" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	   </p>      
   <%}else if(album.equals("D")){ %>
    <p align = "center">
	       <h2> 선택하신 앨범 정보 </h2> <br>
	       <h4>당신이 선택한 앨범은 [MADE - D] 입니다.</h4>
	       <hr>
	         <h2> 타이틀 곡 MV</h2>
	         <iframe width="560" height="315" src="https://www.youtube.com/embed/MBNQgq56egk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	         
	     </p>
	  <%}else if(album.equals("E")){ %>
	  
    <p align = "center">
	       <h2> 선택하신 앨범 정보 </h2> <br>
	       <h4>당신이 선택한 앨범은 [MADE - E] 입니다.</h4>
	       <hr>
	         <h2> 타이틀 곡 MV</h2>
	         <iframe width="560" height="315" src="https://www.youtube.com/embed/D8t8A8E_Tqc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	         
	     </p>
  <%}%>
</body>
</html>