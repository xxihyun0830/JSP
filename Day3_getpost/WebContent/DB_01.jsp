<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>ȸ�� ���� ������ </h2>
<hr>

<form action = "DB_02" method = "post">
�̸� : <input type = "text" name = "Name"> <br>
���̵�: <input type = "text" name = "Id"> <br>
��й�ȣ: <input type = "password" name = "Pw"> <br>
����: <input type = "radio" name = "Gender" value = "male"> Male &nbsp;
     <input type = "radio" name = "Gender" value = "female"> Female <br>

<input type = "submit" value = "OK">
<input type = "reset" value = "CANCEL">


</form>

</body>
</html>