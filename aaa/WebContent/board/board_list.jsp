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

</head>
<body>

//
<jsp:include page = "../include/header.jsp"></jsp:include>

<div>
 <table align = "center">
   <tr>
     <td align = "center"> number </td>
     <td align = "center"> id </td>
     <td align = "center"> name </td>
     <td align = "center"> number </td>
     <td align = "center"> number </td>
     
     
   </tr>
   
   <c:forEach var = "vo" items = "${board_list }">
     
   <tr>
      <td align ="center"> ${vo.bId} </td>
       <td align ="center"> ${vo.bName} </td>
       <td align = "center">
          <a href = "content_view.board ? bId = ${vo.bId} ">
          ${vo.bTitle}
          </a>
        </td>
        <td> ${vo.bDate }</td>
        <td> ${vo.bHit }</td>
     
   </tr>
   </c:forEach>
   
   <tr>
    <td colspan = "5"> 
    <a href = "write_view.board">{}WRITE{}</a>
   
   </tr>

 </table>


</div>

<jsp:include page = "../include/footer.jsp"></jsp:include>	
</body>
</html>