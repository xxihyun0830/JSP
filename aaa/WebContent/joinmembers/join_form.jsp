<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-idth, initial-scale=1">
   

    <title>Welcome to Lovelyz World</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	 <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
    
    <!-- 회원가입의 submit이 연결되는 파일 -->
    <script src="../js/member.js">
    </script>
</head>

<body>
	<jsp:include page = "../include/header.jsp"></jsp:include>
 
 <form action = "joinOk.jsp" method = "post" name = "reg_form">
<div align = "center">
 <table border = "1" width = "800" height = "800">
   <tr align = "center">
    <td colspan = "5"></td>

    
   </tr>
   <tr align = "center">
     <td button > ID </td>
     <td colspan = "4"> <input type = "text" name = "id"> </td> 
     
   </tr>
   <tr align = "center">
     <td> PW </td>
     <td colspan = "4"> <input type = "text" name = "pw"> </td> 
   </tr>
   <tr align = "center">
     <td> PW Check</td>
     <td colspan = "4"> <input type = "text" name = "pwcheck"> </td> 
   </tr>
   <tr align = "center">
     <td> Name </td>
     <td colspan = "4"> <input type = "text" name = "name"> </td> 
   </tr>
   <tr align = "center">
     <td>Email</td>
     <td colspan = "4"> <input type = "text" name = "email"> </td> 
   </tr>
   <tr align = "center">
     <td colspan = "5"> 
       <input type = "button" value = "Join" onclick = "infoConfirm()">
                                               <!-- member.js 로 넘어감/ submit을 받음  -->
       
      </td>
   </tr>
 
 </table>
</div>
</form>

<div><jsp:include page = "../include/footer.jsp"></jsp:include>	
</div>


</body>
</html>