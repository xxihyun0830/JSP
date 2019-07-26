<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-idth, initial-scale=1">
   

    <title>Welcome to VIP World</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
   
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>
   
   <script src = "../js/member2.js"></script>
</head>
<body>
   
   <jsp:include page="../include/header.jsp"/>
    
   <form action = "loginOk.jsp" method = "post" name = "login_form">
  <div align = "center">
   <table border = "1" width = "1000" height = "500">
     <tr align = "center">
       <td> ID </td>
       <td colspan = "4" >
         <input type = "text" placeholder = "아이디"  name = "id"> 
       </td>
     </tr>
     
     <tr align = "center">
       <td> PW </td>
       <td colspan = "4" >
         <input type = "text" placeholder = "비밀번호"  name = "pw">
       </td>
     </tr>
     <tr align = "center">
       <td colspan = "2">
          <input type = "button" value = "LOGIN" onclick = "login_infoConfirm()">
       </td>
       <td colspan = "3" bgcolor = "white">
          <input type = "button" value = "회원가입" onclick = "location = '../joinmembers/join_form.jsp'" >   
       </td>
     </tr>
  
   </table> 
   
  
 </div>
 </form>
   
   <jsp:include page="../include/footer.jsp"/>

</body>
</html>