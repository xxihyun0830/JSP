<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-idth, initial-scale=1">
   

    <title>Welcome to coding101 World</title>

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
        interval: 2000 //changes the speed
    })
    </script>

</head>

<body>

<jsp:include page = "../include/header.jsp"></jsp:include>

<div align = "center">
 <table align = "center" border = "1" bordercolor = "#034f84" width = "1600" height = "1200" >
   
    <!-- label -->
   <tr>
     <td align = "center" style="color:buttercup"> 글 번호</td>
     <td align = "center"> 작성자 </td>
     <td align = "center"> 글 제목</td>
     <td align = "center"> 작성날짜</td>
     <td align = "center" style="color:snorkel bule"> 조회수</td>
   </tr>
   
   
   <!-- BoardListService 에서 ArrayList<boardVO> 로 받았던 모든 데이터를 하나씩 for 문을 통해 화면에 출력해줄 거임  -->
  <!-- DB에 저장된 게시판에 올린 모든 데이터 -->
   <c:forEach var = "vo" items = "${listService_VOlist }"> 
    <tr>
      <td align = "center"> ${ vo.board_Id } </td> 
      <td align = "center"> ${vo.board_Name} </td>
      <td align = "center"> ${vo.board_Title }</td>
      <td align = "center"> ${vo.board_Date }</td>
      <td align = "center"> ${vo.board_Hit }</td>
       <!-- items에서 하나씩 데이터를 가져올 때는 DB에서 사용했던 변수명을 써야 한다.  -->
    </tr>
   </c:forEach>
   
  <!-- 게시글 작성 -->
   <tr>
     <td colspan = "5" align = "center" > 
        <input type = "button" value = "[[게시글 작성하기]]" onClick = "location.href='../Boardproj/board_write.jsp'">
    </td>
   </tr>
  
 </table>
</div>

<jsp:include page = "../include/footer.jsp"></jsp:include>	
</body>
</html>