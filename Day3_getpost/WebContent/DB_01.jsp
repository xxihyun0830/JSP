<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>회원 가입 페이지 </h2>
<hr>

<form action = "DB_02" method = "post">
이름 : <input type = "text" name = "Name"> <br>
아이디: <input type = "text" name = "Id"> <br>
비밀번호: <input type = "password" name = "Pw"> <br>
성별: <input type = "radio" name = "Gender" value = "male"> Male &nbsp;
     <input type = "radio" name = "Gender" value = "female"> Female <br>

<input type = "submit" value = "OK">
<input type = "reset" value = "CANCEL">


</form>

</body>
</html>